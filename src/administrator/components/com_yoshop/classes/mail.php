<?php

class YoshopMail extends JMail
{
    public function createLetter($name)
    {
        return new YoshopMailLetter($name);
    }

    public function send(YoshopMailLetter $letter)
    {
        $this->isHTML(true);
        $this->Encoding = 'base64';

        foreach($letter->getRecipients() as $recipient){
            $this->addRecipient($recipient);
        }

        $this->setSender($letter->getSender());
        $this->setSubject($letter->getSubject());
        $this->setBody($letter->render());

        $res = parent::Send();
        if ($res instanceof JException || $res instanceof Exception) {
            throw $res;
        }
    }

    public function setupWithDefaults()
    {
        $conf = YoshopDi::getInstance()->config;

        $smtpauth = ($conf->get('smtpauth') == 0) ? null : 1;
        $smtpuser = $conf->get('smtpuser');
        $smtppass = $conf->get('smtppass');
        $smtphost = $conf->get('smtphost');
        $smtpsecure = $conf->get('smtpsecure');
        $smtpport = $conf->get('smtpport');
        $mailfrom = $conf->get('mailfrom');
        $fromname = $conf->get('fromname');
        $mailer = $conf->get('mailer');

        // Set default sender without Reply-to
        $this->SetFrom(JMailHelper::cleanLine($mailfrom), JMailHelper::cleanLine($fromname), 0);

        // Default mailer is to use PHP's mail function
        switch ($mailer)
        {
            case 'smtp':
                $this->useSMTP($smtpauth, $smtphost, $smtpuser, $smtppass, $smtpsecure, $smtpport);
                break;

            case 'sendmail':
                $this->IsSendmail();
                break;

            default:
                $this->IsMail();
                break;
        }
    }
}