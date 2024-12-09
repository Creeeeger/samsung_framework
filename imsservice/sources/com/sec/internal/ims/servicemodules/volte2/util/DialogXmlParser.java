package com.sec.internal.ims.servicemodules.volte2.util;

import android.util.Log;
import com.sec.ims.DialogEvent;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.entitilement.SoftphoneNamespaces;
import java.text.ParseException;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.namespace.NamespaceContext;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

/* loaded from: classes.dex */
public class DialogXmlParser {
    private static final int CMC_TYPE_NONE = 0;
    private static final int CMC_TYPE_PRIMARY = 1;
    private static final int CMC_TYPE_SECONDARY = 2;
    private static final int CMC_WIFI_HS_TYPE_PRIMARY = 5;
    private static final int CMC_WIFI_HS_TYPE_SECONDARY = 6;
    private static final int CMC_WIFI_P2P_TYPE_PRIMARY = 7;
    private static final int CMC_WIFI_P2P_TYPE_SECONDARY = 8;
    private static final int CMC_WIFI_TYPE_PRIMARY = 3;
    private static final int CMC_WIFI_TYPE_SECONDARY = 4;
    private static final String LOG_TAG = "DialogXmlParser";
    private static DialogXmlParser sInstance;
    private XPath mXPath;
    private XPathExpression mXPathCallId;
    private XPathExpression mXPathCallSlot;
    private XPathExpression mXPathCallType;
    private XPathExpression mXPathCode;
    private XPathExpression mXPathDialog;
    private XPathExpression mXPathDialogInfo;
    private XPathExpression mXPathDirection;
    private XPathExpression mXPathEntity;
    private XPathExpression mXPathEvent;
    private XPathExpression mXPathExclusive;
    private XPathExpression mXPathId;
    private XPathExpression mXPathLocalDisplay;
    private XPathExpression mXPathLocalDisplayName;
    private XPathExpression mXPathLocalIdentity;
    private XPathExpression mXPathLocalTag;
    private XPathExpression mXPathLocalTarget;
    private XPathExpression mXPathLocalUri;
    private XPathExpression mXPathMediaAttributes;
    private XPathExpression mXPathMediaDirection;
    private XPathExpression mXPathMediaPortZero;
    private XPathExpression mXPathMediaType;
    private XPathExpression mXPathRemoteDisplay;
    private XPathExpression mXPathRemoteDisplayName;
    private XPathExpression mXPathRemoteIdentity;
    private XPathExpression mXPathRemoteTag;
    private XPathExpression mXPathSessionDesc;
    private XPathExpression mXPathSipInstance;
    private XPathExpression mXPathSipRendering;
    private XPathExpression mXPathState;

    public static DialogXmlParser getInstance() {
        if (sInstance == null) {
            sInstance = new DialogXmlParser();
        }
        return sInstance;
    }

    private void init() {
        XPath newXPath = XPathFactory.newInstance().newXPath();
        this.mXPath = newXPath;
        newXPath.setNamespaceContext(new NamespaceContext() { // from class: com.sec.internal.ims.servicemodules.volte2.util.DialogXmlParser.1
            @Override // javax.xml.namespace.NamespaceContext
            public String getNamespaceURI(String str) {
                return "dins".equals(str) ? "urn:ietf:params:xml:ns:dialog-info" : "sa".equals(str) ? "urn:ietf:params:xml:ns:sa-dialog-info" : "";
            }

            @Override // javax.xml.namespace.NamespaceContext
            public String getPrefix(String str) {
                throw new UnsupportedOperationException();
            }

            @Override // javax.xml.namespace.NamespaceContext
            public Iterator getPrefixes(String str) {
                throw new UnsupportedOperationException();
            }
        });
        try {
            this.mXPathDialogInfo = this.mXPath.compile("/dins:dialog-info");
            this.mXPathEntity = this.mXPath.compile("@entity");
            this.mXPathDialog = this.mXPath.compile("dins:dialog");
            this.mXPathId = this.mXPath.compile("@id");
            this.mXPathCallId = this.mXPath.compile("@call-id");
            this.mXPathLocalTag = this.mXPath.compile("@local-tag");
            this.mXPathRemoteTag = this.mXPath.compile("@remote-tag");
            this.mXPathDirection = this.mXPath.compile("@direction");
            this.mXPathExclusive = this.mXPath.compile("sa:exclusive");
            this.mXPathState = this.mXPath.compile("dins:state");
            this.mXPathEvent = this.mXPath.compile("dins:state/@event");
            this.mXPathCode = this.mXPath.compile("dins:state/@code");
            this.mXPathLocalIdentity = this.mXPath.compile("dins:local/dins:identity");
            this.mXPathLocalDisplayName = this.mXPath.compile("dins:local/dins:identity/@display-name");
            this.mXPathLocalDisplay = this.mXPath.compile("dins:local/dins:identity/@display");
            this.mXPathLocalUri = this.mXPath.compile("dins:local/dins:target/@uri");
            this.mXPathLocalTarget = this.mXPath.compile("dins:local/dins:target");
            this.mXPathSessionDesc = this.mXPath.compile("dins:session-description");
            this.mXPathCallType = this.mXPath.compile("dins:calltype");
            this.mXPathCallSlot = this.mXPath.compile("dins:callslot");
            this.mXPathSipInstance = this.mXPath.compile("dins:local/dins:target/dins:param[@pname='+sip.instance']/@pval");
            this.mXPathSipRendering = this.mXPath.compile("dins:local/dins:target/dins:param[@pname='+sip.rendering']/@pval");
            this.mXPathMediaAttributes = this.mXPath.compile("dins:local/dins:mediaAttributes");
            this.mXPathMediaType = this.mXPath.compile("dins:mediaType");
            this.mXPathMediaDirection = this.mXPath.compile("dins:mediaDirection");
            this.mXPathMediaPortZero = this.mXPath.compile("dins:port0");
            this.mXPathRemoteIdentity = this.mXPath.compile("dins:remote/dins:identity");
            this.mXPathRemoteDisplayName = this.mXPath.compile("dins:remote/dins:identity/@display-name");
            this.mXPathRemoteDisplay = this.mXPath.compile("dins:remote/dins:identity/@display");
        } catch (XPathExpressionException e) {
            Log.e(LOG_TAG, "XPath compile failed!", e);
        }
    }

    private DialogXmlParser() {
        init();
    }

    private int convertDialogDirection(String str) throws ParseException {
        if ("initiator".equals(str)) {
            return 0;
        }
        if (CloudMessageProviderContract.VVMMessageColumns.RECIPIENT.equals(str)) {
            return 1;
        }
        throw new ParseException("invalid direction: " + str, 0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int convertDialogState(int i, String str, String str2, String str3) throws ParseException {
        int i2;
        boolean z;
        Log.i(LOG_TAG, "convertDialogState(): " + str + " / " + str2 + " / " + str3);
        try {
            i2 = Integer.parseInt(str3);
        } catch (NumberFormatException unused) {
            Log.e(LOG_TAG, "convertDialogState(): ignoring invalid code " + str3);
            i2 = 0;
        }
        str.hashCode();
        switch (str.hashCode()) {
            case -1308815837:
                if (str.equals("terminated")) {
                    z = false;
                    break;
                }
                z = -1;
                break;
            case -864995257:
                if (str.equals("trying")) {
                    z = true;
                    break;
                }
                z = -1;
                break;
            case -804109473:
                if (str.equals(SoftphoneNamespaces.SoftphoneSettings.CONFIRMED)) {
                    z = 2;
                    break;
                }
                z = -1;
                break;
            case 96278371:
                if (str.equals("early")) {
                    z = 3;
                    break;
                }
                z = -1;
                break;
            default:
                z = -1;
                break;
        }
        switch (z) {
            case false:
                return ("rejected".equals(str2) && i2 == 486) ? 3 : 2;
            case true:
                if (i == 0) {
                    return 4;
                }
                break;
            case true:
                return 1;
            case true:
                if (i == 1 && i2 == 180) {
                    return 0;
                }
                break;
        }
        Log.i(LOG_TAG, "convertDialogState(): ignoring");
        return -1;
    }

    private String getDeviceIdFromSipInstanceId(String str) throws ParseException {
        Matcher matcher = Pattern.compile("urn:gsma:imei:([0-9-]+)").matcher(str);
        if (matcher.matches()) {
            return matcher.group(1).replaceAll("[^0-9]", "");
        }
        throw new ParseException("invalid instance id: " + str, 0);
    }

    private int convertDialogCallType(String str) throws ParseException {
        return SipMsg.FEATURE_TAG_MMTEL_VIDEO.equalsIgnoreCase(str) ? 2 : 1;
    }

    private int convertDialogMediaDirection(String str) throws ParseException {
        if ("sendrecv".equalsIgnoreCase(str)) {
            return 4;
        }
        if ("recvonly".equalsIgnoreCase(str)) {
            return 3;
        }
        if ("sendonly".equalsIgnoreCase(str)) {
            return 2;
        }
        return "inactive".equalsIgnoreCase(str) ? 1 : 0;
    }

    private int convertDialogCallState(String str) throws ParseException {
        return "no".equalsIgnoreCase(str) ? 2 : 1;
    }

    public DialogEvent parseDialogInfoXml(String str) throws XPathExpressionException {
        return parseDialogInfoXml(str, 0);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:128|(15:130|(1:132)|133|134|135|136|137|138|139|140|141|142|143|144|(11:147|148|149|150|151|152|(1:124)(3:115|116|117)|118|49|50|18)(8:146|111|(1:113)|124|118|49|50|18))|173|133|134|135|136|137|138|139|140|141|142|143|144|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(21:19|20|21|(4:23|(7:27|(1:53)|31|(1:(3:41|42|44)(2:34|(2:36|37)(2:39|40)))(2:51|52)|38|24|25)|54|55)(1:246)|(8:56|57|58|(2:235|236)|62|63|65|66)|(3:67|68|(29:69|70|72|73|74|75|76|77|78|79|80|81|82|83|(2:200|201)(1:85)|86|87|88|89|90|(2:193|194)(1:92)|93|94|95|96|97|98|99|100))|(1:102)(3:177|(1:179)|(11:181|104|(3:125|126|(16:128|(15:130|(1:132)|133|134|135|136|137|138|139|140|141|142|143|144|(11:147|148|149|150|151|152|(1:124)(3:115|116|117)|118|49|50|18)(8:146|111|(1:113)|124|118|49|50|18))|173|133|134|135|136|137|138|139|140|141|142|143|144|(0)(0)))|110|111|(0)|124|118|49|50|18))|103|104|(1:106)|125|126|(0)|110|111|(0)|124|118|49|50|18) */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x02aa, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x02af, code lost:
    
        r9 = r8;
        r13 = r19;
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0247, code lost:
    
        android.util.Log.e(com.sec.internal.ims.servicemodules.volte2.util.DialogXmlParser.LOG_TAG, "[CMC] ignoring invalid callType");
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0243, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0244, code lost:
    
        r13 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x02bb, code lost:
    
        r9 = r8;
        r19 = r10;
        r10 = r10;
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x02ac, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x02ad, code lost:
    
        r19 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x02ba, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0308, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0309, code lost:
    
        r8 = r3;
        r3 = r48;
        r19 = r10;
        r10 = r10;
        r6 = r6;
        r2 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01fe A[Catch: ParseException -> 0x0308, TryCatch #21 {ParseException -> 0x0308, blocks: (B:126:0x01f8, B:128:0x01fe, B:130:0x0206, B:173:0x0211), top: B:125:0x01f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0272 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.sec.ims.DialogEvent parseDialogInfoXml(java.lang.String r50, int r51) throws javax.xml.xpath.XPathExpressionException {
        /*
            Method dump skipped, instructions count: 1171
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.volte2.util.DialogXmlParser.parseDialogInfoXml(java.lang.String, int):com.sec.ims.DialogEvent");
    }
}
