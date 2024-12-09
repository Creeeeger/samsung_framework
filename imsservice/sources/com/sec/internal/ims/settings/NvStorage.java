package com.sec.internal.ims.settings;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.system.ErrnoException;
import android.system.Os;
import android.text.TextUtils;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.log.IMSLog;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Optional;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/* loaded from: classes.dex */
public class NvStorage {
    private static final String DEFAULT_NAME = "DEFAULT";
    public static final String ID_OMADM = "omadm";
    private static final String IMS_NV_STORAGE_XML = "/efs/sec_efs/ims_nv_";
    private static final String LOG_TAG = "NvStorage";
    private static final String OMADM_PREFIX = "omadm/./3GPP_IMS/";
    protected static final String ROOT_ELEMENT = "NV_STORAGE";
    private static final String SILENT_REDIAL_PATH = "/efs/sec_efs/silent_redial";
    private Context mContext;
    protected Document mDoc;
    private SimpleEventLog mEventLog;
    private final Object mLock = new Object();
    private String mName;
    protected File mNvFile;
    private int mPhoneId;

    public NvStorage(Context context, String str, int i) {
        this.mDoc = null;
        this.mEventLog = new SimpleEventLog(context, i, LOG_TAG, 50);
        this.mContext = context;
        this.mPhoneId = i;
        StringBuilder sb = new StringBuilder();
        sb.append(TextUtils.isEmpty(str) ? DEFAULT_NAME : str);
        sb.append("_");
        sb.append(i);
        this.mName = sb.toString();
        this.mDoc = null;
        this.mNvFile = new File(IMS_NV_STORAGE_XML + this.mName + ".xml");
        this.mEventLog.logAndAdd(i, "loading new nv file: " + this.mNvFile);
        initNvStorage(false);
        initDoc();
        initElements();
        try {
            Os.chmod(this.mNvFile.getAbsolutePath(), 432);
            Os.chmod(SILENT_REDIAL_PATH, 432);
        } catch (ErrnoException e) {
            IMSLog.e(LOG_TAG, i, "chmod error!! : " + e);
        }
    }

    public void close() {
        synchronized (this.mLock) {
            this.mEventLog.logAndAdd(this.mPhoneId, "Close : " + this.mNvFile);
            this.mNvFile = null;
            this.mDoc = null;
        }
    }

    private synchronized void initElements() {
        initDoc();
        Document document = this.mDoc;
        if (document == null) {
            IMSLog.e(LOG_TAG, this.mPhoneId, this.mNvFile.getName() + " open failed");
            return;
        }
        NodeList elementsByTagName = document.getElementsByTagName(ID_OMADM);
        if (elementsByTagName == null || elementsByTagName.getLength() == 0) {
            this.mEventLog.logAndAdd(this.mPhoneId, "initElements: create omadm");
            NodeList elementsByTagName2 = this.mDoc.getElementsByTagName(ROOT_ELEMENT);
            if (elementsByTagName2 != null && elementsByTagName2.getLength() != 0) {
                Element createElement = this.mDoc.createElement(ID_OMADM);
                migrateFromOldFile(createElement);
                elementsByTagName2.item(0).appendChild(createElement);
                try {
                    Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
                    newTransformer.setOutputProperty("indent", "yes");
                    newTransformer.transform(new DOMSource(this.mDoc), new StreamResult(this.mNvFile));
                } catch (TransformerException e) {
                    IMSLog.e(LOG_TAG, this.mPhoneId, "create() TransformerException exception" + e);
                }
                return;
            }
            IMSLog.e(LOG_TAG, this.mPhoneId, "root is empty");
        }
    }

    private void migrateFromOldFile(final Element element) {
        Document document = null;
        try {
            File file = new File(IMS_NV_STORAGE_XML + this.mName.replaceFirst("_\\d", "") + ".xml");
            if (file.exists()) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "migrateFromOldFile: Copy from old file: " + file);
                document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(file);
            }
        } catch (IOException | ParserConfigurationException | SAXException e) {
            e.printStackTrace();
        }
        Optional.ofNullable(document).map(new Function() { // from class: com.sec.internal.ims.settings.NvStorage$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NodeList lambda$migrateFromOldFile$0;
                lambda$migrateFromOldFile$0 = NvStorage.lambda$migrateFromOldFile$0((Document) obj);
                return lambda$migrateFromOldFile$0;
            }
        }).map(new Function() { // from class: com.sec.internal.ims.settings.NvStorage$$ExternalSyntheticLambda3
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Node lambda$migrateFromOldFile$1;
                lambda$migrateFromOldFile$1 = NvStorage.lambda$migrateFromOldFile$1((NodeList) obj);
                return lambda$migrateFromOldFile$1;
            }
        }).map(new Function() { // from class: com.sec.internal.ims.settings.NvStorage$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Node) obj).getAttributes();
            }
        }).ifPresent(new Consumer() { // from class: com.sec.internal.ims.settings.NvStorage$$ExternalSyntheticLambda5
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                NvStorage.this.lambda$migrateFromOldFile$2(element, (NamedNodeMap) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ NodeList lambda$migrateFromOldFile$0(Document document) {
        return document.getElementsByTagName(ID_OMADM);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Node lambda$migrateFromOldFile$1(NodeList nodeList) {
        return nodeList.item(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$migrateFromOldFile$2(Element element, NamedNodeMap namedNodeMap) {
        for (int i = 0; i < namedNodeMap.getLength(); i++) {
            Node item = namedNodeMap.item(i);
            String nodeName = item.getNodeName();
            String nodeValue = item.getNodeValue();
            IMSLog.i(LOG_TAG, this.mPhoneId, "migrateFromOldFile: " + nodeName + AuthenticationHeaders.HEADER_PRARAM_SPERATOR + IMSLog.checker(nodeValue));
            element.setAttribute(nodeName, nodeValue);
        }
    }

    private synchronized void initDoc() {
        try {
            DocumentBuilder newDocumentBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            if (this.mDoc == null) {
                Document parse = newDocumentBuilder.parse(this.mNvFile);
                this.mDoc = parse;
                if (parse == null) {
                    return;
                }
            }
            if (this.mDoc.getDocumentElement() == null) {
                IMSLog.e(LOG_TAG, this.mPhoneId, "initDoc: getDocumentElement(): null");
                initNvStorage(true);
            } else {
                this.mDoc.getDocumentElement().normalize();
            }
        } catch (IOException | ParserConfigurationException | SAXException e) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "initDoc: Exception occurred! " + e);
            if (e instanceof SAXException) {
                initNvStorage(true);
            }
        }
    }

    private synchronized void initNvStorage(boolean z) {
        this.mEventLog.logAndAdd(this.mPhoneId, "initNvStorage(): isForce: " + z);
        File file = this.mNvFile;
        if (z || !file.exists()) {
            try {
                Document newDocument = DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
                newDocument.appendChild(newDocument.createElement(ROOT_ELEMENT));
                Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
                newTransformer.setOutputProperty("indent", "yes");
                newTransformer.transform(new DOMSource(newDocument), new StreamResult(file));
            } catch (ParserConfigurationException | TransformerException e) {
                IMSLog.e(LOG_TAG, this.mPhoneId, "initNvStorage: Exception occurred! " + e);
            }
        }
    }

    public void insert(String str, ContentValues contentValues) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "insert: " + IMSLog.checker(contentValues));
        synchronized (this.mLock) {
            save(str, contentValues);
        }
    }

    public Cursor query(String str, String[] strArr) {
        MatrixCursor matrixCursor;
        String str2 = LOG_TAG;
        IMSLog.i(str2, this.mPhoneId, "query: " + str + "," + Arrays.toString(strArr));
        synchronized (this.mLock) {
            Map<String, Object> readFromStorage = readFromStorage(str, strArr);
            if ("VZW".equalsIgnoreCase(this.mName) && ImsUtil.isCdmalessEnabled(this.mContext, this.mPhoneId) && readFromStorage != null && readFromStorage.containsKey("SMS_FORMAT")) {
                readFromStorage.put("SMS_FORMAT", "3GPP");
                IMSLog.i(str2, this.mPhoneId, "VZW CDMA-less case! Return fake SMS_FORAMT(3GPP) by force");
            }
            if (readFromStorage == null || readFromStorage.size() <= 0) {
                matrixCursor = null;
            } else {
                String[] strArr2 = new String[2];
                matrixCursor = new MatrixCursor(new String[]{"PATH", "VALUE"});
                for (Map.Entry<String, Object> entry : readFromStorage.entrySet()) {
                    strArr2[0] = "omadm/./3GPP_IMS/" + entry.getKey();
                    strArr2[1] = (String) entry.getValue();
                    matrixCursor.addRow(strArr2);
                }
            }
        }
        return matrixCursor;
    }

    private Map<String, Object> readFromStorage(String str, String[] strArr) {
        HashMap hashMap = new HashMap();
        initDoc();
        Document document = this.mDoc;
        HashSet hashSet = null;
        if (document == null) {
            IMSLog.e(LOG_TAG, this.mPhoneId, this.mNvFile.getName() + " open failed");
            return null;
        }
        NodeList elementsByTagName = document.getElementsByTagName(str);
        if (elementsByTagName != null) {
            Node item = elementsByTagName.item(0);
            if (item == null) {
                IMSLog.e(LOG_TAG, this.mPhoneId, "query(" + str + "): nNode is null");
                initElements();
                return null;
            }
            NamedNodeMap attributes = item.getAttributes();
            if (strArr != null) {
                for (int i = 0; i < strArr.length; i++) {
                    strArr[i] = strArr[i].replace("omadm/./3GPP_IMS/", "");
                }
                hashSet = new HashSet(Arrays.asList(strArr));
            }
            for (int i2 = 0; i2 < attributes.getLength(); i2++) {
                Node item2 = attributes.item(i2);
                if (hashSet == null || hashSet.contains(item2.getNodeName())) {
                    hashMap.put(item2.getNodeName(), item2.getNodeValue());
                }
            }
        }
        return hashMap;
    }

    public int delete(String str) {
        this.mEventLog.logAndAdd(this.mPhoneId, "delete: table " + str);
        synchronized (this.mLock) {
            initDoc();
            Document document = this.mDoc;
            int i = 0;
            if (document == null) {
                IMSLog.e(LOG_TAG, this.mPhoneId, this.mNvFile.getName() + " open failed");
                return 0;
            }
            NodeList elementsByTagName = document.getElementsByTagName(str);
            if (elementsByTagName == null) {
                IMSLog.e(LOG_TAG, this.mPhoneId, "delete(" + str + "): targetChild is null");
                initElements();
                return 0;
            }
            Element element = (Element) elementsByTagName.item(0);
            NamedNodeMap attributes = element.getAttributes();
            int length = attributes.getLength();
            while (length > 0) {
                length--;
                element.removeAttribute(attributes.item(length).getNodeName());
                i++;
            }
            try {
                TransformerFactory.newInstance().newTransformer().transform(new DOMSource(this.mDoc), new StreamResult(this.mNvFile));
            } catch (TransformerException e) {
                IMSLog.e(LOG_TAG, this.mPhoneId, "delete: Exception occurred! " + e);
            }
            return i;
        }
    }

    private void save(String str, ContentValues contentValues) {
        initDoc();
        Document document = this.mDoc;
        if (document == null) {
            IMSLog.e(LOG_TAG, this.mPhoneId, this.mNvFile.getName() + " open failed");
            return;
        }
        Element element = (Element) document.getElementsByTagName(str).item(0);
        if (element == null) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "save(" + str + "): targetElement is null");
            initElements();
            return;
        }
        for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
            String replace = entry.getKey().replace("omadm/./3GPP_IMS/", "");
            String obj = entry.getValue().toString();
            this.mEventLog.logAndAdd(this.mPhoneId, "save: " + replace + " [" + IMSLog.checker(obj) + "]");
            element.setAttribute(replace, obj);
            if ("silent_redial".equalsIgnoreCase(replace)) {
                writeSilentRedial(obj);
            }
        }
        try {
            Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
            newTransformer.setOutputProperty("indent", "yes");
            newTransformer.transform(new DOMSource(this.mDoc), new StreamResult(this.mNvFile));
        } catch (TransformerException e) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "reset() TransformerException exception" + e);
        }
        Iterator<Map.Entry<String, Object>> it = contentValues.valueSet().iterator();
        while (it.hasNext()) {
            String replace2 = it.next().getKey().replace("omadm/./3GPP_IMS/", "");
            this.mContext.getContentResolver().notifyChange(UriUtil.buildUri("content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/" + replace2, this.mPhoneId), null);
        }
    }

    private synchronized void writeSilentRedial(String str) {
        PrintWriter printWriter;
        try {
            printWriter = new PrintWriter(SILENT_REDIAL_PATH);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            printWriter = null;
        }
        if (printWriter != null) {
            printWriter.print(str);
            printWriter.close();
        }
    }

    public void dump() {
        String str = LOG_TAG;
        IMSLog.dump(str, this.mPhoneId, "Dump of NvStorage:");
        IMSLog.dump(str, this.mPhoneId, "NV File: " + this.mNvFile.toString());
        this.mEventLog.dump();
        Optional.ofNullable(readFromStorage(ID_OMADM, null)).ifPresent(new Consumer() { // from class: com.sec.internal.ims.settings.NvStorage$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                NvStorage.this.lambda$dump$4((Map) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dump$4(Map map) {
        String str = LOG_TAG;
        IMSLog.increaseIndent(str);
        IMSLog.dump(str, this.mPhoneId, "Last value of NV OMADM:");
        IMSLog.increaseIndent(str);
        map.forEach(new BiConsumer() { // from class: com.sec.internal.ims.settings.NvStorage$$ExternalSyntheticLambda0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                NvStorage.this.lambda$dump$3((String) obj, obj2);
            }
        });
        IMSLog.decreaseIndent(str);
        IMSLog.decreaseIndent(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dump$3(String str, Object obj) {
        IMSLog.dump(LOG_TAG, this.mPhoneId, str + ": " + obj);
    }
}
