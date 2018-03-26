<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SearchHospitals.aspx.vb" Inherits="WebApplication1.SearchHospitals" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<div class="testStyles"></div>
		</div>
		<div id="SITE_BACKGROUND" class="siteBackground" style="position: absolute; top: 0px; height: 766px; width: 1349px;">
			<div id="SITE_BACKGROUND_previous_noPrev" class="siteBackgroundprevious" style="width: 100%; height: 100%;">
				<div id="SITE_BACKGROUNDpreviousImage" class="siteBackgroundpreviousImage"></div>
				<div id="SITE_BACKGROUNDpreviousVideo" class="siteBackgroundpreviousVideo"></div>
				<div id="SITE_BACKGROUND_previousOverlay_noPrev" class="siteBackgroundpreviousOverlay"></div>
			</div>
			<div id="SITE_BACKGROUND_current_c1dmp_iw1yd7y7_bg" data-position="fixed" class="siteBackgroundcurrent" style="top: 0px; background-color: rgb(255, 255, 255); position: fixed; width: 100%; height: 100%;">
				<div id="SITE_BACKGROUND_currentImage_c1dmp_iw1yd7y7_bg" data-type="bgimage" data-height="100%" class="siteBackgroundcurrentImage" data-image-css="{&quot;backgroundSize&quot;:&quot;cover&quot;,&quot;backgroundPosition&quot;:&quot;center center&quot;,&quot;backgroundRepeat&quot;:&quot;no-repeat&quot;,&quot;height&quot;:&quot;100%&quot;}" style="position: absolute; top: 0px; width: 100%; background-size: cover; background-position: center center; background-repeat: no-repeat; height: 100%; background-image: url(&quot;https://static.wixstatic.com/media/9a3fad9ed36643eca18fe851ba00c8c9.jpg/v1/fill/w_1920,h_1216,al_c,q_85,usm_0.66_1.00_0.01/9a3fad9ed36643eca18fe851ba00c8c9.webp&quot;);"></div>
				<div id="SITE_BACKGROUNDcurrentVideo" class="siteBackgroundcurrentVideo"></div>
				<div id="SITE_BACKGROUND_currentOverlay_c1dmp_iw1yd7y7_bg" class="siteBackgroundcurrentOverlay" style="position: absolute; top: 0px; width: 100%; height: 100%;"></div>
			</div>
		</div>
		<div class="SITE_ROOT" id="SITE_ROOT" style="width: 980px; padding-bottom: 40px;">
			<div id="masterPage" data-ref="masterPage" style="width: 980px; position: static; top: 0px; height: 766px;">
				<header data-is-mobile="false" data-site-width="980" data-state="" class="style-jctloed4" id="SITE_HEADER" style="position: absolute; width: 980px; top: 0px; height: 134px; left: 0px;">
					<div id="SITE_HEADERscreenWidthBackground" class="style-jctloed4screenWidthBackground" style="width: 1349px; left: -184.5px;">
						<div id="SITE_HEADERbg" class="style-jctloed4bg"></div>
					</div>
					<div id="SITE_HEADERcenteredContent" class="style-jctloed4centeredContent">
						<div id="SITE_HEADERinlineContent" class="style-jctloed4inlineContent">
							<div data-exact-height="65" data-content-padding-horizontal="0" data-content-padding-vertical="0" title="" class="wp2" id="comp-jcumlo64" style="left: 0px; position: absolute; top: 70px; width: 65px; height: 65px;">
								<a href="https://spatel274.wixsite.com/mysite/home" target="_self" id="comp-jcumlo64link" class="wp2link" style="cursor: pointer; width: 65px; height: 65px;">
									<div data-style="" class="wp2img" id="comp-jcumlo64img" style="position: relative; width: 65px; height: 65px;">
										<img id="comp-jcumlo64imgimage" alt="" data-type="image" src="./mysite _ Search_files/9fba4a_72359c8eeae64994887b7cd527f4b603_mv2.png" style="width: 65px; height: 65px; object-fit: cover;">
									</div>
								</a>
							</div>
							<div data-packed="true" class="txtNew" id="comp-jcv4kqhn" style="left: 5px; position: fixed; top: 15px;">

								<span style="color: #000000;">
									<span style="font-size: 30px;">Online Best and Cheap Hospital Search</span></span>



							</div>
							<div class="s_DIkImageButtonSkin" data-state="supports_opacity transition_none   " id="comp-jdakp9dv" style="left: 1012px; width: 105px; position: absolute; top: 15px; height: 72px;">
								<a title="" id="comp-jdakp9dvlink" class="s_DIkImageButtonSkinlink" style="width: 105px; height: 72px;">
									<div class="s_DIkImageButtonSkin_correct-positioning">
										<div data-style="" class="s_DIkImageButtonSkindefaultImage" id="comp-jdakp9dvdefaultImage" style="position: relative; width: 105px; height: 72px;">
											<img id="comp-jdakp9dvdefaultImageimage" alt="" data-type="image" src="./mysite _ Search_files/9fba4a_fe5df064aedc46098184e0e1bc95c0d4_mv2.png" style="width: 105px; height: 72px; object-fit: contain;">
										</div>
									</div>
									<div class="s_DIkImageButtonSkin_correct-positioning">
										<div data-style="" class="s_DIkImageButtonSkinhoverImage" id="comp-jdakp9dvhoverImage" style="position: relative; width: 105px; height: 72px;">
											<img id="comp-jdakp9dvhoverImageimage" alt="" data-type="image" src="./mysite _ Search_files/035244_a65babab1aa5483ab91c5597cdd7e0ba_mv2.png" style="width: 105px; height: 72px; object-fit: contain;">
										</div>
									</div>
									<div class="s_DIkImageButtonSkin_correct-positioning">
										<div data-style="" class="s_DIkImageButtonSkinactiveImage" id="comp-jdakp9dvactiveImage" style="position: relative; width: 105px; height: 72px;">
											<img id="comp-jdakp9dvactiveImageimage" alt="" data-type="image" src="./mysite _ Search_files/035244_6d8748a01b794527bd352bbd841737f4_mv2.png" style="width: 105px; height: 72px; object-fit: contain;">
										</div>
									</div>
								</a>
							</div>
							
						</div>
					</div>
				</header>
				<div data-is-mobile="false" data-site-width="980" class="pc1" data-state="" id="PAGES_CONTAINER" style="left: 0px; width: 980px; position: absolute; top: 134px; height: 500px;">
					<div id="PAGES_CONTAINERscreenWidthBackground" class="pc1screenWidthBackground" style="left: -184.5px; width: 1349px;"></div>
					<div id="PAGES_CONTAINERcenteredContent" class="pc1centeredContent">
						<div id="PAGES_CONTAINERbg" class="pc1bg"></div>
						<div id="PAGES_CONTAINERinlineContent" class="pc1inlineContent">
							<div class="s_VOwPageGroupSkin" id="SITE_PAGES" style="left: 0px; width: 980px; position: absolute; top: 0px; height: 500px;">
								<div data-ismobile="false" data-is-mesh-layout="false" class="style-jdanz5s8" id="c1dmp" style="left: 0px; min-height: 500px; width: 980px; position: absolute; top: 0px; height: 641px; display: none; visibility: hidden;">
									<div id="c1dmpbg" class="style-jdanz5s8bg"></div>
									<div id="c1dmpinlineContent" class="style-jdanz5s8inlineContent"></div>
								</div>
								<div data-ismobile="false" data-is-mesh-layout="false" class="style-je3dd9fj" id="fbk97" style="left: 0px; min-height: 500px; width: 980px; position: absolute; top: 0px; height: 500px; display: none; visibility: hidden;">
									<div id="fbk97bg" class="style-je3dd9fjbg"></div>
									<div id="fbk97inlineContent" class="style-je3dd9fjinlineContent"></div>
								</div>
								<div data-ismobile="false" data-is-mesh-layout="false" class="style-jcutrhxx" id="a1qxm" style="left: 0px; min-height: 500px; width: 980px; position: absolute; top: 0px; height: 500px;">
									<div id="a1qxmbg" class="style-jcutrhxxbg"></div>
									<div class="style-jcutrhxx_bg2"></div>
									<div id="a1qxminlineContent" class="style-jcutrhxxinlineContent">
										<div id="comp-jcut57u4" data-align="center" data-disabled="false" data-margin="0" data-should-use-flex="true" data-width="142" data-height="40" class="style-jctlfxld" data-state="desktop shouldUseFlex center" style="left: 395px; position: absolute; top: 326px; height: 40px; min-height: 35px; width: 142px;">

											<asp:Button runat="server" ID="btnSearch" CssClass="style-jctlfxldlin style-jctlfxldlabelk" Text="Search" Style="height: 30px; width: 140px; font-size: medium; margin-top: 25px; position: fixed; background-color: skyblue; color: black" />

										</div>
										<div class="style-jcutxsa3_with-validation-indication style-jcutxsa3_left-direction style-jcutxsa3" data-disabled="false" data-state="noLabel" id="comp-jcutaw1p" style="left: 64px; width: 232px; position: absolute; top: 92px; height: 43px;">
											<label id="comp-jcutaw1plabel" class="style-jcutxsa3label" style="display: none;"></label>

											<asp:DropDownList runat="server" ID="ddlCountry" Style="width: 150px; height: 30px; background-color: lightpink; border-radius: 10px">
												<asp:ListItem Text="Select Country" Value="0" />
												<asp:ListItem Text="United States" Value="0" />
											</asp:DropDownList>
											<p id="comp-jcutaw1pmessage" class="style-jcutxsa3message" style="display: none;"></p>
										</div>
										<div class="style-jctu69ay_with-validation-indication style-jctu69ay_left-direction style-jctu69ay" data-disabled="false" data-state="noLabel" id="comp-jcutblnc" style="left: 365px; width: 222px; position: absolute; top: 92px; height: 43px;">
											<label id="comp-jcutblnclabel" class="style-jctu69aylabel" style="display: none;"></label>
											<asp:DropDownList runat="server" ID="ddlState" Style="width: 150px; height: 30px; background-color: lightpink; border-radius: 10px"></asp:DropDownList>
											<%--	<input type="t
				
				ext" value="" required="" placeholder="State" class="has-custom-focus style-jctu69ayinput" id="comp-jcutblncinput" style="padding-left: 14px;">--%>

											<p id="comp-jcutblncmessage" class="style-jctu69aymessage" style="display: none;"></p>
										</div>
										<div class="style-jctu69ay_with-validation-indication style-jctu69ay_left-direction style-jctu69ay" data-disabled="false" data-state="noLabel" id="comp-jcutboz3" style="left: 214px; width: 226px; position: absolute; top: 213px; height: 43px;">
											<label id="comp-jcutboz3label" class="style-jctu69aylabel" style="display: none;"></label>

											<asp:DropDownList runat="server" ID="ddlDieases" Style="width: 150px; height: 30px; background-color: lightpink; border-radius: 10px"></asp:DropDownList>
											<%--<input type="text" value="" required="" placeholder="Disease" class="has-custom-focus style-jctu69ayinput" id="comp-jcutboz3input" style="padding-left: 14px;">--%>

											<p id="comp-jcutboz3message" class="style-jctu69aymessage" style="display: none;"></p>
										</div>
										<div class="style-jctu69ay_with-validation-indication style-jctu69ay_left-direction style-jctu69ay" data-disabled="false" data-state="noLabel" id="comp-jcutbz86" style="left: 516px; width: 224px; position: absolute; top: 213px; height: 43px;">
											<label id="comp-jcutbz86label" class="style-jctu69aylabel" style="display: none;"></label>
											<asp:DropDownList runat="server" ID="ddlSpecialization" Style="width: 150px; height: 30px; background-color: lightpink; border-radius: 10px"></asp:DropDownList>
											<%--<input type="text" value="" required="" placeholder="Specialization" class="has-custom-focus style-jctu69ayinput" id="comp-jcutbz86input" style="padding-left: 14px;">--%>

											<p id="comp-jcutbz86message" class="style-jctu69aymessage" style="display: none;"></p>
										</div>
										<div class="style-jctu69ay_with-validation-indication style-jctu69ay_left-direction style-jctu69ay" data-disabled="false" data-state="noLabel" id="comp-jcutc1hh" style="left: 650px; width: 224px; position: absolute; top: 92px; height: 43px;">
											<label id="comp-jcutc1hhlabel" class="style-jctu69aylabel" style="display: none;"></label>

											<asp:DropDownList runat="server" ID="ddlCity" Style="width: 150px; height: 30px; background-color: lightpink; border-radius: 10px"></asp:DropDownList>
											<%--<input type="text" value="" required="" placeholder="City" class="has-custom-focus style-jctu69ayinput" id="comp-jcutc1hhinput" style="padding-left: 14px;">
							--%>
											<p id="comp-jcutc1hhmessage" class="style-jctu69aymessage" style="display: none;"></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<footer class="fc1_footer fc1" data-sitewidth="980" data-fixedposition="false" data-isrunninginmobile="false" data-state=" " id="SITE_FOOTER" style="bottom: auto; left: 0px; width: 980px; position: absolute; top: 634px; height: 132px;">
					<div id="SITE_FOOTERscreenWidthBackground" class="fc1screenWidthBackground" style="width: 1349px; left: -184.5px;"></div>
					<div id="SITE_FOOTERcenteredContent" class="fc1centeredContent">
						<div id="SITE_FOOTERbg" class="fc1bg"></div>
						<div id="SITE_FOOTERinlineContent" class="fc1inlineContent"></div>
					</div>
				</footer>
			</div>
		</div>
		<div id="WIX_ADS" class="wrapper visible" style="">

			<a class="desktop-top" id="top" data-aid="WIX_ADSdesktopTop" href="https://www.wix.com/lpviral/enviral?utm_campaign=vir_wixad_live&amp;adsVersion=blue&amp;orig_msid=c24d8d91-b718-4d8f-81d0-31782142d7f5" target="_blank" rel="nofollow" style="width: 161px;">

				<div class="main">
					Create Your
					<svg class="wix" viewBox="0 0 28 10.89" alt="wix">
						<path d="M16.02.2c-.55.3-.76.78-.76 2.14a2.17 2.17 0 0 1 .7-.42 3 3 0 0 0 .7-.4A1.62 1.62 0 0 0 17.22 0a3 3 0 0 0-1.18.2z" class="dot"></path><path d="M12.77.52a2.12 2.12 0 0 0-.58 1l-1.5 5.8-1.3-4.75a4.06 4.06 0 0 0-.7-1.55 2.08 2.08 0 0 0-2.9 0 4.06 4.06 0 0 0-.7 1.55L3.9 7.32l-1.5-5.8a2.12 2.12 0 0 0-.6-1A2.6 2.6 0 0 0 0 .02l2.9 10.83a3.53 3.53 0 0 0 1.42-.17c.62-.33.92-.57 1.3-2 .33-1.33 1.26-5.2 1.35-5.47a.5.5 0 0 1 .34-.4.5.5 0 0 1 .4.5c.1.3 1 4.2 1.4 5.5.4 1.5.7 1.7 1.3 2a3.53 3.53 0 0 0 1.4.2l2.8-11a2.6 2.6 0 0 0-1.82.53zm4.43 1.26a1.76 1.76 0 0 1-.58.5c-.26.16-.52.26-.8.4a.82.82 0 0 0-.57.82v7.36a2.47 2.47 0 0 0 1.2-.15c.6-.3.75-.6.75-2V1.8zm7.16 3.68L28 .06a3.22 3.22 0 0 0-2.3.42 8.67 8.67 0 0 0-1 1.24l-1.34 1.93a.3.3 0 0 1-.57 0l-1.4-1.93a8.67 8.67 0 0 0-1-1.24 3.22 3.22 0 0 0-2.3-.43l3.6 5.4-3.7 5.4a3.54 3.54 0 0 0 2.32-.48 7.22 7.22 0 0 0 1-1.16l1.33-1.9a.3.3 0 0 1 .57 0l1.37 2a8.2 8.2 0 0 0 1 1.2 3.47 3.47 0 0 0 2.33.5z"></path></svg>
					Site
				</div>
				<div class="hover1">You can do it yourself!</div>
				<div class="hover2">Start now</div>
				<svg class="arrow" viewBox="0 0 6.62 11.25">
					<path d="M.77.64l4.5 5.4-4.5 4.5"></path></svg></a><div class="desktop-bottom" id="bottom" data-aid="WIX_ADSdesktopBottom">
						<span class="contents"><span class="first">This site was created with the <a href="http://www.wix.com/?utm_campaign=vir_wixad_live&amp;adsVersion=new" target="_blank" rel="nofollow">
							<svg class="wix-logo" viewBox="0 0 28 10.89" alt="wix">
								<path d="M16.02.2c-.55.3-.76.78-.76 2.14a2.17 2.17 0 0 1 .7-.42 3 3 0 0 0 .7-.4A1.62 1.62 0 0 0 17.22 0a3 3 0 0 0-1.18.2z" class="dot"></path><path d="M12.77.52a2.12 2.12 0 0 0-.58 1l-1.5 5.8-1.3-4.75a4.06 4.06 0 0 0-.7-1.55 2.08 2.08 0 0 0-2.9 0 4.06 4.06 0 0 0-.7 1.55L3.9 7.32l-1.5-5.8a2.12 2.12 0 0 0-.6-1A2.6 2.6 0 0 0 0 .02l2.9 10.83a3.53 3.53 0 0 0 1.42-.17c.62-.33.92-.57 1.3-2 .33-1.33 1.26-5.2 1.35-5.47a.5.5 0 0 1 .34-.4.5.5 0 0 1 .4.5c.1.3 1 4.2 1.4 5.5.4 1.5.7 1.7 1.3 2a3.53 3.53 0 0 0 1.4.2l2.8-11a2.6 2.6 0 0 0-1.82.53zm4.43 1.26a1.76 1.76 0 0 1-.58.5c-.26.16-.52.26-.8.4a.82.82 0 0 0-.57.82v7.36a2.47 2.47 0 0 0 1.2-.15c.6-.3.75-.6.75-2V1.8zm7.16 3.68L28 .06a3.22 3.22 0 0 0-2.3.42 8.67 8.67 0 0 0-1 1.24l-1.34 1.93a.3.3 0 0 1-.57 0l-1.4-1.93a8.67 8.67 0 0 0-1-1.24 3.22 3.22 0 0 0-2.3-.43l3.6 5.4-3.7 5.4a3.54 3.54 0 0 0 2.32-.48 7.22 7.22 0 0 0 1-1.16l1.33-1.9a.3.3 0 0 1 .57 0l1.37 2a8.2 8.2 0 0 0 1 1.2 3.47 3.47 0 0 0 2.33.5z"></path></svg><span class="com">.com</span></a> website builder. It's easy &amp; free.</span><span class="second">Create Your Website</span><svg class="arrow" viewBox="0 0 6.62 11.25"><path d="M.77.64l4.5 5.4-4.5 4.5"></path></svg></span>
			</div>
		</div>
		<div class="siteAspectsContainer">
			<div></div>
			<div></div>
			<div></div>
		</div>
		

    
    
    
    
    
    
    








		<script type="text/javascript">try { window.NREUM || (NREUM = {}); NREUM.info = { "errorBeacon": "bam.nr-data.net", "licenseKey": "c99d7f1ab0", "agent": "", "beacon": "bam.nr-data.net", "applicationTime": 11, "applicationID": "1963269,30200700", "transactionName": "ZFAHNkNYXUBQVEUKXF0aNgdDT19WRRhVCkBDVBEBWVxB", "queueTime": 0 } } catch (e) { }</script>

		 <script type="text/javascript">
			 function Validation() {
				 var ddlCity = document.getElementById("<%=ddlCity.ClientID %>");
				 var ddlCountry = document.getElementById("<%=ddlCountry.ClientID %>");
				 var ddlDieases = document.getElementById("<%=ddlDieases.ClientID %>");
				 var ddlSpecialization = document.getElementById("<%=ddlSpecialization.ClientID %>");
				 var ddlState = document.getElementById("<%=ddlState.ClientID %>");

				 if (ddlCity.value == "0") {
					alert("Enter City");
					ddlCity.focus();
					return false;
				 }
				 if (ddlCountry.value == "0") {
					 alert("Enter Country");
					 ddlCountry.focus();
					 return false;
				 }
				 if (ddlDieases.value == "0") {
					 alert("Enter Dieases");
					 ddlDieases.focus();
					 return false;
				 }
				 if (ddlState.value == "0") {
					 alert("Enter State");
					 ddlState.focus();
					 return false;
				 }
				 if (ddlSpecialization.value == "0") {
					 alert("Enter Specialization");
					 ddlSpecialization.focus();
					 return false;
				 }

				return true;
			 }
			 </script>
		
	</form>
</body>
</html>
