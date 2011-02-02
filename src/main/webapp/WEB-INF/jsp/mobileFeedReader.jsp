<%--

    Licensed to Jasig under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Jasig licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License. You may obtain a
    copy of the License at:

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on
    an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied. See the License for the
    specific language governing permissions and limitations
    under the License.

--%>

<jsp:directive.include file="/WEB-INF/jsp/include.jsp"/>
<portlet:defineObjects/>
<c:set var="n"><portlet:namespace/></c:set>

<script type="text/javascript" src="<rs:resourceURL value="/rs/jquery/1.4.2/jquery-1.4.2.js"/>"></script>
<script type="text/javascript" src="<rs:resourceURL value="/rs/jqueryui/1.8/jquery-ui-1.8.js"/>"></script>
<script type="text/javascript" src="<rs:resourceURL value="/rs/fluid/1.3/js/fluid-all-1.3.js"/>"></script>
<script type="text/javascript" src="<c:url value="/scripts/news-feed-view-mobile.js"/>"></script>

<div id="${n}">
    <div class="news-reader-back-link"></div>
    <div class="flc-screenNavigator-navbar fl-navbar fl-table news-reader-back-bar" style="display:none;">
        <div class="fl-table-row">
            <div class="fl-table-cell">
                <a href="javascript:;" class="fl-button fl-backButton news-reader-back-link">
                    <span class="fl-button-inner search-back-text">Back</span>
                </a>
            </div>            
            <h1 class="fl-table-cell">
            </h1>
        </div>
    </div>
    
    <div class="news-reader-feed-list fl-container-auto">
        <ul class="fl-list-menu">
            <li class="news-reader-feed">
                <a class="flc-screenNavigator-backButton news-reader-feed-link" href="#">
                    <span class="news-reader-feed-title"></span>
                </a>
            </li>
        </ul>
    </div>
    <div class="news-reader-story-list fl-container-auto" style="display:none;">
        <h2 class="news-reader-feed-title"></h2>
        <ul class="fl-list">
            <li class="news-reader-story">
                <a class="news-reader-story-link" href="#">
                    <span class="news-reader-story-title"></span>
                    <span class="news-reader-story-summary fl-link-summary"></span>
                </a>
            </li>
        </ul>
    </div>
</div>

    
<c:set var="storyView">${renderRequest.preferences.map['storyView'][0]}</c:set>
<script type="text/javascript"><!--
    var newsReaderPortlet = newsReaderPortlet || {};
    newsReaderPortlet.jQuery = jQuery.noConflict(true);
    newsReaderPortlet.fluid = fluid;
    fluid = null;
    fluid_1_1 = null;
    newsReaderPortlet.jQuery(function(){
        var $ = newsReaderPortlet.jQuery;
        var fluid = newsReaderPortlet.fluid;
        
        $(document).ready(function(){

            newsreader.MobileFeedListView(
                $("#${n}"),
                {
                    url: "<portlet:resourceURL/>"
                }
            );
            
        });

    });
</script>