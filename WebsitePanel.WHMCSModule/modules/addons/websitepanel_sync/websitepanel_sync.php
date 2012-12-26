<?php if (!defined('WHMCS')) exit('ACCESS DENIED');
// Copyright (c) 2012, Outercurve Foundation.
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
// - Redistributions of source code must  retain  the  above copyright notice, this
//   list of conditions and the following disclaimer.
//
// - Redistributions in binary form  must  reproduce the  above  copyright  notice,
//   this list of conditions  and  the  following  disclaimer in  the documentation
//   and/or other materials provided with the distribution.
//
// - Neither  the  name  of  the  Outercurve Foundation  nor   the   names  of  its
//   contributors may be used to endorse or  promote  products  derived  from  this
//   software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING,  BUT  NOT  LIMITED TO, THE IMPLIED
// WARRANTIES  OF  MERCHANTABILITY   AND  FITNESS  FOR  A  PARTICULAR  PURPOSE  ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
// ANY DIRECT, INDIRECT, INCIDENTAL,  SPECIAL,  EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO,  PROCUREMENT  OF  SUBSTITUTE  GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)  HOWEVER  CAUSED AND ON
// ANY  THEORY  OF  LIABILITY,  WHETHER  IN  CONTRACT,  STRICT  LIABILITY,  OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE)  ARISING  IN  ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

/**
 * WebsitePanel Sync Addon Module
 * 
 * @author Christopher York
 * @package WebsitePanel Sync Addon Module
 * @version v1.0
 * @link http://www.websitepanel.net/
 */

/**
 * websitepanel_sync_config
 * 
 * @access public
 * @return array
 */
function websitepanel_sync_config()
{
    $configarray = array('name' => 'WebsitePanel Sync Automation',
                         'description' => 'Syncs WHMCS client details / contact changes with WebsitePanel',
                         'version' => '1.0',
                         'author' => 'Christopher York',
                         'fields' => array('serverhost' => array('FriendlyName', 'Enterprise Server Host', 'Type' => 'text', 'Size' => 25, 'Description' => 'Enterprise Server hostname / IP address', 'Default' => '127.0.0.1'),
                                           'serverport' => array('FriendlyName', 'Enterprise Server Port', 'Type' => 'text', 'Size' => 4, 'Description' => 'Enterprise Server port', 'Default' => 9002),
                                           'serversecured' => array('FriendlyName', 'Use Secured Connection', 'Type' => 'yesno', 'Description' => 'Tick to use SSL secured connection'),
                                           'username' => array('FriendlyName', 'Username', 'Type' => 'text', 'Size' => 25, 'Description' => 'Enterprise Server username', 'Default' => 'serveradmin'),
                                           'password' => array('FriendlyName', 'Password', 'Type' => 'password', 'Size' => 25, 'Description' => 'Enterprise Server password')
                                           )
                        );
    return $configarray;
}