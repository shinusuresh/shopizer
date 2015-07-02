<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${requestScope.CONFIGS['splunk_analytics_host'] != null}">	
	<!-- Splunk based analytics tracking -->
	<script type="text/javascript">
	  var sp=sp||[];(function(){var e=["init","identify","track","trackLink","pageview"],t=function(e){return function(){sp.push([e].concat(Array.prototype.slice.call(arguments,0)))}};for(var n=0;n<e.length;n++)sp[e[n]]=t(e[n])})(),sp.load=function(e,o){sp._endpoint=e;if(o){sp.init(o)};var t=document.createElement("script");t.type="text/javascript",t.async=!0,t.src=("https:"===document.location.protocol?"https://":"http://")+"d21ey8j28ejz92.cloudfront.net/analytics/v1/sp.min.js";var n=document.getElementsByTagName("script")[0];n.parentNode.insertBefore(t,n)};
	  sp.load('<c:out value="${requestScope.CONFIGS['splunk_analytics_host']}"/>'); // Data Collection Endpoint - http://localhost:3000
	</script>
	
	<!--END Splunk based analytics tracking  -->    
</c:if>	