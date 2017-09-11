<#include "../../header.ftl">
<!--maincontent-->
<div class="mainWrap navslide">
    <div class="ui equal width left aligned padded grid stackable">
        <div class="row">
            <div class="sixteen wide tablet sixteen wide computer column">
                <#if msg??>
                    <div class="ui error message">
                        <i class="close icon" onclick="hideMsg()"></i>
                        <div class="header">
                            错误信息
                        </div>
                        ${msg}
                    </div>
                </#if>
                <div class="ui segments">
                    <div class="ui segment">
                        <h5 class="ui header">
                            添加菜单
                        </h5>
                    </div>
                    <form  class="ui form segment form4" action="/menu/save" method="post">
                        <div class="field">
                            <label>菜单名称</label>
                            <input placeholder="请填写菜单名称..." name="name" type="text">
                        </div>
                        <div class="field">
                            <label>上级菜单</label>
                            <div class="ui selection dropdown" tabindex="0">
                                <input name="parentId" type="hidden">
                                <div class="default text"> </div>
                                <i class="dropdown icon"></i>
                                <div class="menu" tabindex="-1">
                                    <div class="item" data-value="">--空--</div>
                                    <div class="item" data-value="1">系统管理</div>
                                    <div class="item" data-value="2">其他管理</div>
                                </div>
                            </div>
                        </div>
                        <div class="field">
                            <label>菜单路径</label>
                            <input placeholder="请填写菜单路径..." name="url" type="text">
                        </div>
                        <div class="field">
                            <label>授权标识</label>
                            <input name="perms" placeholder="请填写授权标识,多个请用逗号隔开..." type="text">
                        </div>
                        <div class="field">
                            <label>排序</label>
                            <input name="sort"  type="number">
                        </div>
                        <div class="field">
                            <label>图标</label>
                            <div class="ui fluid action input">
                                <input name="icon" type="text" value="">
                                <button type="button" onclick="showIcon()" class="ui teal right labeled icon button">
                                    <i class="rocket icon"></i>
                                    浏览
                                </button>
                            </div>
                        </div>
                        <div class="field">
                            <label>是否隐藏</label>
                            <div class="ui selection dropdown" tabindex="0">
                                <input name="isShow" type="hidden" value="1">
                                <div class="default text">否</div>
                                <i class="dropdown icon"></i>
                                <div class="menu" tabindex="-1">
                                    <div class="item" data-value="0">是</div>
                                    <div class="item" data-value="1">否</div>
                                </div>
                            </div>
                        </div>
                        <div class="field">
                            <label>目标</label>
                            <input type="text" name="target" placeholder="请输入_blank、_self、_top">
                        </div>
                        <input type="submit" class="ui green submit right button"/>
                        <div class="ui error message"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!--maincontent-->
<div class="ui modal">
    <i class="close icon"></i>
    <div class="header">
        请复制图标到输入框
    </div>
    <div class="content">
        <div class="ui equal width left aligned padded grid stackable">
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Web Content
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="alarm icon"></i>Alarm</div>
                                <div class="column"><i class="alarm slash icon"></i>Alarm Slash</div>
                                <div class="column"><i class="alarm outline icon"></i>Alarm Outline</div>
                                <div class="column"><i class="alarm slash outline icon"></i>Alarm Slash Outline</div>
                                <div class="column"><i class="at icon"></i>At</div>
                                <div class="column"><i class="browser icon"></i>Browser</div>
                                <div class="column"><i class="bug icon"></i>Bug</div>
                                <div class="column"><i class="calendar outline icon"></i>Calendar Outline</div>
                                <div class="column"><i class="calendar icon"></i>Calendar</div>
                                <div class="column"><i class="cloud icon"></i>Cloud</div>
                                <div class="column"><i class="code icon"></i>Code</div>
                                <div class="column"><i class="comment icon"></i>Comment</div>
                                <div class="column"><i class="comments icon"></i>Comments</div>
                                <div class="column"><i class="comment outline icon"></i>Comment Outline</div>
                                <div class="column"><i class="comments outline icon"></i>Comments Outline</div>
                                <div class="column"><i class="copyright icon"></i>Copyright</div>
                                <div class="column"><i class="dashboard icon"></i>Dashboard</div>
                                <div class="column"><i class="dropdown icon"></i>Dropdown</div>
                                <div class="column"><i class="external square icon"></i>External Square</div>
                                <div class="column"><i class="external icon"></i>External</div>
                                <div class="column"><i class="eyedropper icon"></i>Eyedropper</div>
                                <div class="column"><i class="feed icon"></i>Feed</div>
                                <div class="column"><i class="find icon"></i>Find</div>
                                <div class="column"><i class="heartbeat icon"></i>Heartbeat</div>
                                <div class="column"><i class="history icon"></i>History</div>
                                <div class="column"><i class="home icon"></i>Home</div>
                                <div class="column"><i class="idea icon"></i>Idea</div>
                                <div class="column"><i class="inbox icon"></i>Inbox</div>
                                <div class="column"><i class="lab icon"></i>Lab</div>
                                <div class="column"><i class="mail icon"></i>Mail</div>
                                <div class="column"><i class="mail outline icon"></i>Mail Outline</div>
                                <div class="column"><i class="mail square icon"></i>Mail Square</div>
                                <div class="column"><i class="map icon"></i>Map</div>
                                <div class="column"><i class="options icon"></i>Options</div>
                                <div class="column"><i class="paint brush icon"></i>Paint Brush</div>
                                <div class="column"><i class="payment icon"></i>Payment</div>
                                <div class="column"><i class="phone icon"></i>Phone</div>
                                <div class="column"><i class="phone square icon"></i>Phone Square</div>
                                <div class="column"><i class="privacy icon"></i>Privacy</div>
                                <div class="column"><i class="protect icon"></i>Protect</div>
                                <div class="column"><i class="search icon"></i>Search</div>
                                <div class="column"><i class="setting icon"></i>Setting</div>
                                <div class="column"><i class="settings icon"></i>Settings</div>
                                <div class="column"><i class="shop icon"></i>Shop</div>
                                <div class="column"><i class="sidebar icon"></i>Sidebar</div>
                                <div class="column"><i class="signal icon"></i>Signal</div>
                                <div class="column"><i class="sitemap icon"></i>Sitemap</div>
                                <div class="column"><i class="tag icon"></i>Tag</div>
                                <div class="column"><i class="tags icon"></i>Tags</div>
                                <div class="column"><i class="tasks icon"></i>Tasks</div>
                                <div class="column"><i class="terminal icon"></i>Terminal</div>
                                <div class="column"><i class="text telephone icon"></i>Text Telephone</div>
                                <div class="column"><i class="ticket icon"></i>Ticket</div>
                                <div class="column"><i class="trophy icon"></i>Trophy</div>
                                <div class="column"><i class="wifi icon"></i>Wifi</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                User Actions
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="adjust icon"></i>Adjust</div>
                                <div class="column"><i class="add user icon"></i>Add User</div>
                                <div class="column"><i class="add to cart icon"></i>Add to cart</div>
                                <div class="column"><i class="archive icon"></i>Archive</div>
                                <div class="column"><i class="ban icon"></i>Ban</div>
                                <div class="column"><i class="bookmark icon"></i>Bookmark</div>
                                <div class="column"><i class="call icon"></i>Call</div>
                                <div class="column"><i class="call square icon"></i>Call Square</div>
                                <div class="column"><i class="cloud download icon"></i>Cloud Download</div>
                                <div class="column"><i class="cloud upload icon"></i>Cloud Upload</div>
                                <div class="column"><i class="compress icon"></i>Compress</div>
                                <div class="column"><i class="configure icon"></i>Configure</div>
                                <div class="column"><i class="download icon"></i>Download</div>
                                <div class="column"><i class="edit icon"></i>Edit</div>
                                <div class="column"><i class="erase icon"></i>Erase</div>
                                <div class="column"><i class="exchange icon"></i>Exchange</div>
                                <div class="column"><i class="external share icon"></i>External Share</div>
                                <div class="column"><i class="expand icon"></i>Expand</div>
                                <div class="column"><i class="filter icon"></i>Filter</div>
                                <div class="column"><i class="flag icon"></i>Flag</div>
                                <div class="column"><i class="flag outline icon"></i>Flag Outline</div>
                                <div class="column"><i class="forward mail icon"></i>Forward Mail</div>
                                <div class="column"><i class="hide icon"></i>Hide</div>
                                <div class="column"><i class="in cart icon"></i>In Cart</div>
                                <div class="column"><i class="lock icon"></i>Lock</div>
                                <div class="column"><i class="pin icon"></i>Pin</div>
                                <div class="column"><i class="print icon"></i>Print</div>
                                <div class="column"><i class="random icon"></i>Random</div>
                                <div class="column"><i class="recycle icon"></i>Recycle</div>
                                <div class="column"><i class="refresh icon"></i>Refresh</div>
                                <div class="column"><i class="remove bookmark icon"></i>Remove Bookmark</div>
                                <div class="column"><i class="remove user icon"></i>Remove User</div>
                                <div class="column"><i class="repeat icon"></i>Repeat</div>
                                <div class="column"><i class="reply all icon"></i>Reply All</div>
                                <div class="column"><i class="reply icon"></i>Reply</div>
                                <div class="column"><i class="retweet icon"></i>Retweet</div>
                                <div class="column"><i class="send icon"></i>Send</div>
                                <div class="column"><i class="send outline icon"></i>Send Outline</div>
                                <div class="column"><i class="share alternate icon"></i>Share Alternate</div>
                                <div class="column"><i class="share alternate square icon"></i>Share Alternate Square</div>
                                <div class="column"><i class="share icon"></i>Share</div>
                                <div class="column"><i class="share square icon"></i>Share Square</div>
                                <div class="column"><i class="sign in icon"></i>Sign in</div>
                                <div class="column"><i class="sign out icon"></i>Sign out</div>
                                <div class="column"><i class="theme icon"></i>Theme</div>
                                <div class="column"><i class="translate icon"></i>Translate</div>
                                <div class="column"><i class="undo icon"></i>Undo</div>
                                <div class="column"><i class="unhide icon"></i>Unhide</div>
                                <div class="column"><i class="unlock alternate icon"></i>Unlock Alternate</div>
                                <div class="column"><i class="unlock icon"></i>Unlock</div>
                                <div class="column"><i class="upload icon"></i>Upload</div>
                                <div class="column"><i class="wait icon"></i>Wait</div>
                                <div class="column"><i class="wizard icon"></i>Wizard</div>
                                <div class="column"><i class="write icon"></i>Write</div>
                                <div class="column"><i class="write square icon"></i>Write Square</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Message
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="announcement icon"></i>Announcement</div>
                                <div class="column"><i class="birthday icon"></i>Birthday</div>
                                <div class="column"><i class="flag icon"></i>Flag</div>
                                <div class="column"><i class="help icon"></i>Help</div>
                                <div class="column"><i class="help circle icon"></i>Help Circle</div>
                                <div class="column"><i class="info icon"></i>Info</div>
                                <div class="column"><i class="info circle icon"></i>Info Circle</div>
                                <div class="column"><i class="warning icon"></i>Warning</div>
                                <div class="column"><i class="warning circle icon"></i>Warning Circle</div>
                                <div class="column"><i class="warning sign icon"></i>Warning Sign</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                User Types
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="child icon"></i>Child</div>
                                <div class="column"><i class="doctor icon"></i>Doctor</div>
                                <div class="column"><i class="handicap icon"></i>Handicap</div>
                                <div class="column"><i class="spy icon"></i>Spy</div>
                                <div class="column"><i class="student icon"></i>Student</div>
                                <div class="column"><i class="user icon"></i>User</div>
                                <div class="column"><i class="users icon"></i>Users</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Gender / Sexuality
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="female icon"></i> Female </div>
                                <div class="column"><i class="gay icon"></i> Gay </div>
                                <div class="column"><i class="heterosexual icon"></i> Heterosexual </div>
                                <div class="column"><i class="intergender icon"></i> Intergender </div>
                                <div class="column"><i class="lesbian icon"></i> Lesbian </div>
                                <div class="column"><i class="male icon"></i> Male </div>
                                <div class="column"><i class="man icon"></i> Man </div>
                                <div class="column"><i class="neuter icon"></i> Neuter </div>
                                <div class="column"><i class="non binary transgender icon"></i> Non Binary Transgender </div>
                                <div class="column"><i class="transgender icon"></i> Transgender </div>
                                <div class="column"><i class="other gender icon"></i> Other Gender </div>
                                <div class="column"><i class="other gender horizontal icon"></i> Other Gender Horizontal </div>
                                <div class="column"><i class="other gender vertical icon"></i> Other Gender Vertical </div>
                                <div class="column"><i class="woman icon"></i> Woman </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Layout Adjustment
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="grid layout icon"></i>Grid Layout</div>
                                <div class="column"><i class="list layout icon"></i>List Layout</div>
                                <div class="column"><i class="block layout icon"></i>Block Layout</div>
                                <div class="column"><i class="zoom icon"></i>Zoom</div>
                                <div class="column"><i class="zoom out icon"></i>Zoom Out</div>
                                <div class="column"><i class="resize vertical icon"></i>Resize Vertical</div>
                                <div class="column"><i class="resize horizontal icon"></i>Resize Horizontal</div>
                                <div class="column"><i class="maximize icon"></i>Maximize</div>
                                <div class="column"><i class="crop icon"></i>Crop</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Objects
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="anchor icon"></i>Anchor</div>
                                <div class="column"><i class="bar icon"></i>Bar</div>
                                <div class="column"><i class="bomb icon"></i>Bomb</div>
                                <div class="column"><i class="book icon"></i>Book</div>
                                <div class="column"><i class="bullseye icon"></i>Bullseye</div>
                                <div class="column"><i class="calculator icon"></i>Calculator</div>
                                <div class="column"><i class="checkered flag icon"></i>Checkered Flag</div>
                                <div class="column"><i class="cocktail icon"></i>Cocktail</div>
                                <div class="column"><i class="diamond icon"></i>Diamond</div>
                                <div class="column"><i class="fax icon"></i>Fax</div>
                                <div class="column"><i class="fire extinguisher icon"></i>Fire Extinguisher</div>
                                <div class="column"><i class="fire icon"></i>Fire</div>
                                <div class="column"><i class="gift icon"></i>Gift</div>
                                <div class="column"><i class="leaf icon"></i>Leaf</div>
                                <div class="column"><i class="legal icon"></i>Legal</div>
                                <div class="column"><i class="lemon icon"></i>Lemon</div>
                                <div class="column"><i class="life ring icon"></i>Life Ring</div>
                                <div class="column"><i class="lightning icon"></i>Lightning</div>
                                <div class="column"><i class="magnet icon"></i>Magnet</div>
                                <div class="column"><i class="money icon"></i>Money</div>
                                <div class="column"><i class="moon icon"></i>Moon</div>
                                <div class="column"><i class="plane icon"></i>Plane</div>
                                <div class="column"><i class="puzzle icon"></i>Puzzle</div>
                                <div class="column"><i class="rain icon"></i>Rain</div>
                                <div class="column"><i class="road icon"></i>Road</div>
                                <div class="column"><i class="rocket icon"></i>Rocket</div>
                                <div class="column"><i class="shipping icon"></i>Shipping</div>
                                <div class="column"><i class="soccer icon"></i>Soccer</div>
                                <div class="column"><i class="suitcase icon"></i>Suitcase</div>
                                <div class="column"><i class="sun icon"></i>Sun</div>
                                <div class="column"><i class="travel icon"></i>Travel</div>
                                <div class="column"><i class="treatment icon"></i>Treatment</div>
                                <div class="column"><i class="world icon"></i>World</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Shapes
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="asterisk icon"></i>Asterisk</div>
                                <div class="column"><i class="certificate icon"></i>Certificate</div>
                                <div class="column"><i class="circle icon"></i>Circle</div>
                                <div class="column"><i class="circle notched icon"></i>Circle Notched</div>
                                <div class="column"><i class="circle thin icon"></i>Circle Thin</div>
                                <div class="column"><i class="crosshairs icon"></i>Crosshairs</div>
                                <div class="column"><i class="cube icon"></i>Cube</div>
                                <div class="column"><i class="cubes icon"></i>Cubes</div>
                                <div class="column"><i class="ellipsis horizontal icon"></i>Ellipsis Horizontal</div>
                                <div class="column"><i class="ellipsis vertical icon"></i>Ellipsis Vertical</div>
                                <div class="column"><i class="quote left icon"></i>Quote Left</div>
                                <div class="column"><i class="quote right icon"></i>Quote Right</div>
                                <div class="column"><i class="spinner icon"></i>Spinner</div>
                                <div class="column"><i class="square icon"></i>Square</div>
                                <div class="column"><i class="square outline icon"></i>Square Outline</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Item Selection
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="add circle icon"></i>Add Circle</div>
                                <div class="column"><i class="add square icon"></i>Add Square</div>
                                <div class="column"><i class="check circle icon"></i>Check Circle</div>
                                <div class="column"><i class="check circle outline icon"></i>Check Circle Outline</div>
                                <div class="column"><i class="check square icon"></i>Check Square</div>
                                <div class="column"><i class="checkmark box icon"></i>Checkmark Box</div>
                                <div class="column"><i class="checkmark icon"></i>Checkmark</div>
                                <div class="column"><i class="minus circle icon"></i>Minus Circle</div>
                                <div class="column"><i class="minus icon"></i>Minus</div>
                                <div class="column"><i class="minus square icon"></i>Minus Square</div>
                                <div class="column"><i class="minus square outline icon"></i>Minus Square Outline</div>
                                <div class="column"><i class="move icon"></i>Move</div>
                                <div class="column"><i class="plus icon"></i>Plus</div>
                                <div class="column"><i class="plus square outline icon"></i>Plus Square Outline</div>
                                <div class="column"><i class="radio icon"></i>Radio</div>
                                <div class="column"><i class="remove circle icon"></i>Remove Circle</div>
                                <div class="column"><i class="remove circle outline icon"></i>Remove Circle Outline</div>
                                <div class="column"><i class="remove icon"></i>Remove</div>
                                <div class="column"><i class="selected radio icon"></i>Selected Radio</div>
                                <div class="column"><i class="toggle off icon"></i>Toggle Off</div>
                                <div class="column"><i class="toggle on icon"></i>Toggle On</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Media
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="area chart icon"></i>Area Chart</div>
                                <div class="column"><i class="bar chart icon"></i>Bar Chart</div>
                                <div class="column"><i class="camera retro icon"></i>Camera Retro</div>
                                <div class="column"><i class="newspaper icon"></i>Newspaper</div>
                                <div class="column"><i class="film icon"></i>Film</div>
                                <div class="column"><i class="line chart icon"></i>Line Chart</div>
                                <div class="column"><i class="photo icon"></i>Photo</div>
                                <div class="column"><i class="pie chart icon"></i>Pie Chart</div>
                                <div class="column"><i class="sound icon"></i>Sound</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Pointers
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="angle double down icon"></i>Angle Double Down</div>
                                <div class="column"><i class="angle double left icon"></i>Angle Double Left</div>
                                <div class="column"><i class="angle double right icon"></i>Angle Double Right</div>
                                <div class="column"><i class="angle double up icon"></i>Angle Double Up</div>
                                <div class="column"><i class="angle down icon"></i>Angle Down</div>
                                <div class="column"><i class="angle left icon"></i>Angle Left</div>
                                <div class="column"><i class="angle right icon"></i>Angle Right</div>
                                <div class="column"><i class="angle up icon"></i>Angle Up</div>
                                <div class="column"><i class="arrow circle down icon"></i>Arrow Circle Down</div>
                                <div class="column"><i class="arrow circle left icon"></i>Arrow Circle Left</div>
                                <div class="column"><i class="arrow circle outline down icon"></i>Arrow Circle Outline Down</div>
                                <div class="column"><i class="arrow circle outline left icon"></i>Arrow Circle Outline Left</div>
                                <div class="column"><i class="arrow circle outline right icon"></i>Arrow Circle Outline Right</div>
                                <div class="column"><i class="arrow circle outline up icon"></i>Arrow Circle Outline Up</div>
                                <div class="column"><i class="arrow circle right icon"></i>Arrow Circle Right</div>
                                <div class="column"><i class="arrow circle up icon"></i>Arrow Circle Up</div>
                                <div class="column"><i class="arrow down icon"></i>Arrow Down</div>
                                <div class="column"><i class="arrow left icon"></i>Arrow Left</div>
                                <div class="column"><i class="arrow right icon"></i>Arrow Right</div>
                                <div class="column"><i class="arrow up icon"></i>Arrow Up</div>
                                <div class="column"><i class="caret down icon"></i>Caret Down</div>
                                <div class="column"><i class="caret left icon"></i>Caret Left</div>
                                <div class="column"><i class="caret right icon"></i>Caret Right</div>
                                <div class="column"><i class="caret up icon"></i>Caret Up</div>
                                <div class="column"><i class="chevron circle down icon"></i>Chevron Circle Down</div>
                                <div class="column"><i class="chevron circle left icon"></i>Chevron Circle Left</div>
                                <div class="column"><i class="chevron circle right icon"></i>Chevron Circle Right</div>
                                <div class="column"><i class="chevron circle up icon"></i>Chevron Circle Up</div>
                                <div class="column"><i class="chevron down icon"></i>Chevron Down</div>
                                <div class="column"><i class="chevron left icon"></i>Chevron Left</div>
                                <div class="column"><i class="chevron right icon"></i>Chevron Right</div>
                                <div class="column"><i class="chevron up icon"></i>Chevron Up</div>
                                <div class="column"><i class="long arrow down icon"></i>Long Arrow Down</div>
                                <div class="column"><i class="long arrow left icon"></i>Long Arrow Left</div>
                                <div class="column"><i class="long arrow right icon"></i>Long Arrow Right</div>
                                <div class="column"><i class="long arrow up icon"></i>Long Arrow Up</div>
                                <div class="column"><i class="pointing down icon"></i>Pointing Down</div>
                                <div class="column"><i class="pointing left icon"></i>Pointing Left</div>
                                <div class="column"><i class="pointing right icon"></i>Pointing Right</div>
                                <div class="column"><i class="pointing up icon"></i>Pointing Up</div>
                                <div class="column"><i class="toggle down icon"></i>Toggle Down</div>
                                <div class="column"><i class="toggle left icon"></i>Toggle Left</div>
                                <div class="column"><i class="toggle right icon"></i>Toggle Right</div>
                                <div class="column"><i class="toggle up icon"></i>Toggle Up</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Computer and File System
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="desktop icon"></i>Desktop</div>
                                <div class="column"><i class="disk outline icon"></i>Disk Outline</div>
                                <div class="column"><i class="file archive outline icon"></i>File Archive Outline</div>
                                <div class="column"><i class="file audio outline icon"></i>File Audio Outline</div>
                                <div class="column"><i class="file code outline icon"></i>File Code Outline</div>
                                <div class="column"><i class="file excel outline icon"></i>File Excel Outline</div>
                                <div class="column"><i class="file icon"></i>File</div>
                                <div class="column"><i class="file image outline icon"></i>File Image Outline</div>
                                <div class="column"><i class="file outline icon"></i>File Outline</div>
                                <div class="column"><i class="file pdf outline icon"></i>File Pdf Outline</div>
                                <div class="column"><i class="file powerpoint outline icon"></i>File Powerpoint Outline</div>
                                <div class="column"><i class="file text icon"></i>File Text</div>
                                <div class="column"><i class="file text outline icon"></i>File Text Outline</div>
                                <div class="column"><i class="file video outline icon"></i>File Video Outline</div>
                                <div class="column"><i class="file word outline icon"></i>File Word Outline</div>
                                <div class="column"><i class="folder icon"></i>Folder</div>
                                <div class="column"><i class="folder open icon"></i>Folder Open</div>
                                <div class="column"><i class="folder open outline icon"></i>Folder Open Outline</div>
                                <div class="column"><i class="folder outline icon"></i>Folder Outline</div>
                                <div class="column"><i class="game icon"></i>Game</div>
                                <div class="column"><i class="keyboard icon"></i>Keyboard</div>
                                <div class="column"><i class="laptop icon"></i>Laptop</div>
                                <div class="column"><i class="level down icon"></i>Level Down</div>
                                <div class="column"><i class="level up icon"></i>Level Up</div>
                                <div class="column"><i class="mobile icon"></i>Mobile</div>
                                <div class="column"><i class="power icon"></i>Power</div>
                                <div class="column"><i class="plug icon"></i>Plug</div>
                                <div class="column"><i class="tablet icon"></i>Tablet</div>
                                <div class="column"><i class="trash icon"></i>Trash</div>
                                <div class="column"><i class="trash outline icon"></i>Trash Outline</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Tecnologies
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="barcode icon"></i>Barcode</div>
                                <div class="column"><i class="css3 icon"></i>Css3</div>
                                <div class="column"><i class="database icon"></i>Database</div>
                                <div class="column"><i class="fork icon"></i>Fork</div>
                                <div class="column"><i class="html5 icon"></i>Html5</div>
                                <div class="column"><i class="openid icon"></i>Openid</div>
                                <div class="column"><i class="qrcode icon"></i>Qrcode</div>
                                <div class="column"><i class="rss icon"></i>RSS</div>
                                <div class="column"><i class="rss square icon"></i>RSS Square</div>
                                <div class="column"><i class="server icon"></i>Server</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Rating
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="empty heart icon"></i>Empty Heart</div>
                                <div class="column"><i class="empty star icon"></i>Empty Star</div>
                                <div class="column"><i class="frown icon"></i>Frown</div>
                                <div class="column"><i class="heart icon"></i>Heart</div>
                                <div class="column"><i class="meh icon"></i>Meh</div>
                                <div class="column"><i class="smile icon"></i>Smile</div>
                                <div class="column"><i class="star half empty icon"></i>Star Half Empty</div>
                                <div class="column"><i class="star half icon"></i>Star Half</div>
                                <div class="column"><i class="star icon"></i>Star</div>
                                <div class="column"><i class="thumbs down icon"></i>Thumbs Down</div>
                                <div class="column"><i class="thumbs outline down icon"></i>Thumbs Outline Down</div>
                                <div class="column"><i class="thumbs outline up icon"></i>Thumbs Outline Up</div>
                                <div class="column"><i class="thumbs up icon"></i>Thumbs Up</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Audio
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid">
                                <div class="column"><i class="backward icon"></i>Backward</div>
                                <div class="column"><i class="eject icon"></i>Eject</div>
                                <div class="column"><i class="fast backward icon"></i>Fast Backward</div>
                                <div class="column"><i class="fast forward icon"></i>Fast Forward</div>
                                <div class="column"><i class="forward icon"></i>Forward</div>
                                <div class="column"><i class="music icon"></i>Music</div>
                                <div class="column"><i class="mute icon"></i>Mute</div>
                                <div class="column"><i class="pause icon"></i>Pause</div>
                                <div class="column"><i class="play icon"></i>Play</div>
                                <div class="column"><i class="record icon"></i>Record</div>
                                <div class="column"><i class="step backward icon"></i>Step Backward</div>
                                <div class="column"><i class="step forward icon"></i>Step Forward</div>
                                <div class="column"><i class="stop icon"></i>Stop</div>
                                <div class="column"><i class="unmute icon"></i>Unmute</div>
                                <div class="column"><i class="video play icon"></i>Video Play</div>
                                <div class="column"><i class="video play outline icon"></i>Video Play Outline</div>
                                <div class="column"><i class="volume down icon"></i>Volume Down</div>
                                <div class="column"><i class="volume off icon"></i>Volume Off</div>
                                <div class="column"><i class="volume up icon"></i>Volume Up</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Map
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="building icon"></i>Building</div>
                                <div class="column"><i class="building outline icon"></i>Building Outline</div>
                                <div class="column"><i class="car icon"></i>Car</div>
                                <div class="column"><i class="coffee icon"></i>Coffee</div>
                                <div class="column"><i class="emergency icon"></i>Emergency</div>
                                <div class="column"><i class="first aid icon"></i>First Aid</div>
                                <div class="column"><i class="food icon"></i>Food</div>
                                <div class="column"><i class="h icon"></i>H</div>
                                <div class="column"><i class="hospital icon"></i>Hospital</div>
                                <div class="column"><i class="location arrow icon"></i>Location Arrow</div>
                                <div class="column"><i class="marker icon"></i>Marker</div>
                                <div class="column"><i class="military icon"></i>Military</div>
                                <div class="column"><i class="paw icon"></i>Paw</div>
                                <div class="column"><i class="space shuttle icon"></i>Space Shuttle</div>
                                <div class="column"><i class="spoon icon"></i>Spoon</div>
                                <div class="column"><i class="taxi icon"></i>Taxi</div>
                                <div class="column"><i class="tree icon"></i>Tree</div>
                                <div class="column"><i class="university icon"></i>University</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Tables
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="columns icon"></i>Columns</div>
                                <div class="column"><i class="sort alphabet ascending icon"></i>Sort Alphabet Ascending</div>
                                <div class="column"><i class="sort alphabet descending icon"></i>Sort Alphabet Descending</div>
                                <div class="column"><i class="sort ascending icon"></i>Sort Ascending</div>
                                <div class="column"><i class="sort content ascending icon"></i>Sort Content Ascending</div>
                                <div class="column"><i class="sort content descending icon"></i>Sort Content Descending</div>
                                <div class="column"><i class="sort descending icon"></i>Sort Descending</div>
                                <div class="column"><i class="sort icon"></i>Sort</div>
                                <div class="column"><i class="sort numeric ascending icon"></i>Sort Numeric Ascending</div>
                                <div class="column"><i class="sort numeric descending icon"></i>Sort Numeric Descending</div>
                                <div class="column"><i class="table icon"></i>Table</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Text Editor
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="align center icon"></i>Align Center</div>
                                <div class="column"><i class="align justify icon"></i>Align Justify</div>
                                <div class="column"><i class="align left icon"></i>Align Left</div>
                                <div class="column"><i class="align right icon"></i>Align Right</div>
                                <div class="column"><i class="attach icon"></i>Attach</div>
                                <div class="column"><i class="bold icon"></i>Bold</div>
                                <div class="column"><i class="copy icon"></i>Copy</div>
                                <div class="column"><i class="cut icon"></i>Cut</div>
                                <div class="column"><i class="font icon"></i>Font</div>
                                <div class="column"><i class="header icon"></i>Header</div>
                                <div class="column"><i class="indent icon"></i>Indent</div>
                                <div class="column"><i class="italic icon"></i>Italic</div>
                                <div class="column"><i class="linkify icon"></i>Linkify</div>
                                <div class="column"><i class="list icon"></i>List</div>
                                <div class="column"><i class="ordered list icon"></i>Ordered List</div>
                                <div class="column"><i class="outdent icon"></i>Outdent</div>
                                <div class="column"><i class="paragraph icon"></i>Paragraph</div>
                                <div class="column"><i class="paste icon"></i>Paste</div>
                                <div class="column"><i class="save icon"></i>Save</div>
                                <div class="column"><i class="strikethrough icon"></i>Strikethrough</div>
                                <div class="column"><i class="subscript icon"></i>Subscript</div>
                                <div class="column"><i class="superscript icon"></i>Superscript</div>
                                <div class="column"><i class="text height icon"></i>Text Height</div>
                                <div class="column"><i class="text width icon"></i>Text Width</div>
                                <div class="column"><i class="underline icon"></i>Underline</div>
                                <div class="column"><i class="unlink icon"></i>Unlink</div>
                                <div class="column"><i class="unordered list icon"></i>Unordered List</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Currency
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="dollar icon"></i>Dollar</div>
                                <div class="column"><i class="euro icon"></i>Euro</div>
                                <div class="column"><i class="lira icon"></i>Lira</div>
                                <div class="column"><i class="pound icon"></i>Pound</div>
                                <div class="column"><i class="ruble icon"></i>Ruble</div>
                                <div class="column"><i class="rupee icon"></i>Rupee</div>
                                <div class="column"><i class="shekel icon"></i>Shekel</div>
                                <div class="column"><i class="won icon"></i>Won</div>
                                <div class="column"><i class="yen icon"></i>Yen</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Payment Options
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="american express icon"></i>American Express</div>
                                <div class="column"><i class="discover icon"></i>Discover</div>
                                <div class="column"><i class="google wallet icon"></i>Google Wallet</div>
                                <div class="column"><i class="mastercard icon"></i>Mastercard</div>
                                <div class="column"><i class="paypal card icon"></i>Paypal Card</div>
                                <div class="column"><i class="paypal icon"></i>Paypal</div>
                                <div class="column"><i class="stripe icon"></i>Stripe</div>
                                <div class="column"><i class="visa icon"></i>Visa</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sixteen wide column">
                    <div class="ui segments">
                        <div class="ui segment">
                            <h5 class="ui header">
                                Brands
                            </h5>
                        </div>
                        <div class="ui segment">
                            <div class="ui doubling five column grid" style="text-transform:lowercase!important">
                                <div class="column"><i class="adn icon"></i> Adn </div>
                                <div class="column"><i class="android icon"></i> Android </div>
                                <div class="column"><i class="angellist icon"></i> Angellist </div>
                                <div class="column"><i class="apple icon"></i> Apple </div>
                                <div class="column"><i class="behance icon"></i> Behance </div>
                                <div class="column"><i class="behance square icon"></i> Behance Square </div>
                                <div class="column"><i class="bitbucket icon"></i> Bitbucket </div>
                                <div class="column"><i class="bitbucket square icon"></i> Bitbucket Square </div>
                                <div class="column"><i class="bitcoin icon"></i> Bitcoin </div>
                                <div class="column"><i class="buysellads icon"></i> Buysellads </div>
                                <div class="column"><i class="codepen icon"></i> Codepen </div>
                                <div class="column"><i class="connectdevelop icon"></i> Connectdevelop </div>
                                <div class="column"><i class="dashcube icon"></i> Dashcube </div>
                                <div class="column"><i class="delicious icon"></i> Delicious </div>
                                <div class="column"><i class="deviantart icon"></i> Deviantart </div>
                                <div class="column"><i class="digg icon"></i> Digg </div>
                                <div class="column"><i class="dribbble icon"></i> Dribbble </div>
                                <div class="column"><i class="dropbox icon"></i> Dropbox </div>
                                <div class="column"><i class="drupal icon"></i> Drupal </div>
                                <div class="column"><i class="empire icon"></i> Empire </div>
                                <div class="column"><i class="facebook icon"></i> Facebook </div>
                                <div class="column"><i class="facebook square icon"></i> Facebook Square </div>
                                <div class="column"><i class="flickr icon"></i> Flickr </div>
                                <div class="column"><i class="forumbee icon"></i> Forumbee </div>
                                <div class="column"><i class="foursquare icon"></i> Foursquare </div>
                                <div class="column"><i class="git icon"></i> Git </div>
                                <div class="column"><i class="git square icon"></i> Git Square </div>
                                <div class="column"><i class="github alternate icon"></i> Github Alternate </div>
                                <div class="column"><i class="github icon"></i> Github </div>
                                <div class="column"><i class="github square icon"></i> Github Square </div>
                                <div class="column"><i class="gittip icon"></i> Gittip </div>
                                <div class="column"><i class="google icon"></i> Google </div>
                                <div class="column"><i class="google plus icon"></i> Google Plus </div>
                                <div class="column"><i class="google plus square icon"></i> Google Plus Square </div>
                                <div class="column"><i class="hacker news icon"></i> Hacker News </div>
                                <div class="column"><i class="instagram icon"></i> Instagram </div>
                                <div class="column"><i class="ioxhost icon"></i> Ioxhost </div>
                                <div class="column"><i class="joomla icon"></i> Joomla </div>
                                <div class="column"><i class="jsfiddle icon"></i> Jsfiddle </div>
                                <div class="column"><i class="lastfm icon"></i> Lastfm </div>
                                <div class="column"><i class="lastfm square icon"></i> Lastfm Square </div>
                                <div class="column"><i class="leanpub icon"></i> Leanpub </div>
                                <div class="column"><i class="linkedin icon"></i> Linkedin </div>
                                <div class="column"><i class="linkedin square icon"></i> Linkedin Square </div>
                                <div class="column"><i class="linux icon"></i> Linux </div>
                                <div class="column"><i class="maxcdn icon"></i> Maxcdn </div>
                                <div class="column"><i class="meanpath icon"></i> Meanpath </div>
                                <div class="column"><i class="medium icon"></i> Medium </div>
                                <div class="column"><i class="pagelines icon"></i> Pagelines </div>
                                <div class="column"><i class="pied piper alternate icon"></i> Pied Piper Alternate </div>
                                <div class="column"><i class="pied piper icon"></i> Pied Piper </div>
                                <div class="column"><i class="pinterest icon"></i> Pinterest </div>
                                <div class="column"><i class="pinterest square icon"></i> Pinterest Square </div>
                                <div class="column"><i class="qq icon"></i> Qq </div>
                                <div class="column"><i class="rebel icon"></i> Rebel </div>
                                <div class="column"><i class="reddit icon"></i> Reddit </div>
                                <div class="column"><i class="reddit square icon"></i> Reddit Square </div>
                                <div class="column"><i class="renren icon"></i> Renren </div>
                                <div class="column"><i class="sellsy icon"></i> Sellsy </div>
                                <div class="column"><i class="shirtsinbulk icon"></i> Shirtsinbulk </div>
                                <div class="column"><i class="simplybuilt icon"></i> Simplybuilt </div>
                                <div class="column"><i class="skyatlas icon"></i> Skyatlas </div>
                                <div class="column"><i class="skype icon"></i> Skype </div>
                                <div class="column"><i class="slack icon"></i> Slack </div>
                                <div class="column"><i class="slideshare icon"></i> Slideshare </div>
                                <div class="column"><i class="soundcloud icon"></i> Soundcloud </div>
                                <div class="column"><i class="spotify icon"></i> Spotify </div>
                                <div class="column"><i class="stack exchange icon"></i> Stack Exchange </div>
                                <div class="column"><i class="stack overflow icon"></i> Stack Overflow </div>
                                <div class="column"><i class="steam icon"></i> Steam </div>
                                <div class="column"><i class="steam square icon"></i> Steam Square </div>
                                <div class="column"><i class="stumbleupon circle icon"></i> Stumbleupon Circle </div>
                                <div class="column"><i class="stumbleupon icon"></i> Stumbleupon </div>
                                <div class="column"><i class="tencent weibo icon"></i> Tencent Weibo </div>
                                <div class="column"><i class="trello icon"></i> Trello </div>
                                <div class="column"><i class="tumblr icon"></i> Tumblr </div>
                                <div class="column"><i class="tumblr square icon"></i> Tumblr Square </div>
                                <div class="column"><i class="twitch icon"></i> Twitch </div>
                                <div class="column"><i class="twitter icon"></i> Twitter </div>
                                <div class="column"><i class="twitter square icon"></i> Twitter Square </div>
                                <div class="column"><i class="viacoin icon"></i> Viacoin </div>
                                <div class="column"><i class="vimeo icon"></i> Vimeo </div>
                                <div class="column"><i class="vine icon"></i> Vine </div>
                                <div class="column"><i class="vk icon"></i> Vk </div>
                                <div class="column"><i class="wechat icon"></i> Wechat </div>
                                <div class="column"><i class="weibo icon"></i> Weibo </div>
                                <div class="column"><i class="whatsapp icon"></i> Whatsapp </div>
                                <div class="column"><i class="windows icon"></i> Windows </div>
                                <div class="column"><i class="wordpress icon"></i> Wordpress </div>
                                <div class="column"><i class="xing icon"></i> Xing </div>
                                <div class="column"><i class="xing square icon"></i> Xing Square </div>
                                <div class="column"><i class="yahoo icon"></i> Yahoo </div>
                                <div class="column"><i class="yelp icon"></i> Yelp </div>
                                <div class="column"><i class="youtube icon"></i> Youtube </div>
                                <div class="column"><i class="youtube play icon"></i> Youtube Play </div>
                                <div class="column"><i class="youtube square icon"></i> Youtube Square </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    /*
    * 显示图标
    * */
    function showIcon () {
        $('.ui.modal').modal('show');
    }

    /**
     * 隐藏消息
     */
    function hideMsg() {
        $('.message').hide();
    }

</script>