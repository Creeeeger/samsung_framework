package com.sec.internal.ims.servicemodules.tapi.service.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.util.Log;
import com.gsma.services.rcs.capability.Capabilities;
import com.gsma.services.rcs.capability.CapabilitiesLog;
import com.gsma.services.rcs.contact.ContactId;
import com.sec.internal.ims.servicemodules.csh.event.ICshConstants;
import com.sec.internal.ims.servicemodules.tapi.service.api.CapabilityServiceImpl;
import com.sec.internal.ims.servicemodules.tapi.service.api.ServerApiException;
import com.sec.internal.ims.servicemodules.tapi.service.api.TapiServiceManager;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class CapsProvider extends ContentProvider {
    public static final String AUTHORITY;
    private static final String LOG_TAG = CapsProvider.class.getSimpleName();
    private static final int RCSAPI = 2;
    private static final int RCSAPI_ID = 1;
    private static final int RCSAPI_OWN = 3;
    public static final String[] SERVICE_PROJECTION;
    private static final UriMatcher uriMatcher;
    private CapabilityServiceImpl mService = null;

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    static {
        String authority = CapabilitiesLog.CONTENT_URI.getAuthority();
        AUTHORITY = authority;
        SERVICE_PROJECTION = new String[]{"_id", ICshConstants.ShareDatabase.KEY_TARGET_CONTACT, "capability_image_sharing", "capability_video_sharing", "capability_im_session", "capability_file_transfer", "capability_geoloc_push", "capability_extensions", "automata", "timestamp"};
        UriMatcher uriMatcher2 = new UriMatcher(-1);
        uriMatcher = uriMatcher2;
        uriMatcher2.addURI(authority, "capability/*", 1);
        uriMatcher2.addURI(authority, "capability", 2);
        uriMatcher2.addURI(authority, "capability/own", 3);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        CapabilityServiceImpl capabilityServiceImpl;
        boolean z = true;
        while (true) {
            capabilityServiceImpl = this.mService;
            if (capabilityServiceImpl != null || !z) {
                break;
            }
            this.mService = TapiServiceManager.getCapService();
            z = false;
        }
        if (capabilityServiceImpl == null) {
            return null;
        }
        int match = uriMatcher.match(uri);
        if (match == 1) {
            try {
                Capabilities contactCapabilities = this.mService.getContactCapabilities(new ContactId(uri.getLastPathSegment()));
                if (contactCapabilities == null) {
                    return null;
                }
                MatrixCursor matrixCursor = new MatrixCursor(SERVICE_PROJECTION);
                buildCursor(uri.getLastPathSegment(), contactCapabilities, matrixCursor);
                return matrixCursor;
            } catch (ServerApiException e) {
                e.printStackTrace();
                return null;
            }
        }
        if (match != 2) {
            if (match != 3) {
                return null;
            }
            try {
                Capabilities myCapabilities = this.mService.getMyCapabilities();
                if (myCapabilities == null) {
                    return null;
                }
                MatrixCursor matrixCursor2 = new MatrixCursor(SERVICE_PROJECTION);
                buildCursor(uri.getLastPathSegment(), myCapabilities, matrixCursor2);
                return matrixCursor2;
            } catch (ServerApiException e2) {
                e2.printStackTrace();
                return null;
            }
        }
        Map<String, Capabilities> allContactCapabilities = this.mService.getAllContactCapabilities();
        if (allContactCapabilities == null) {
            return null;
        }
        MatrixCursor matrixCursor3 = new MatrixCursor(SERVICE_PROJECTION);
        Log.d(LOG_TAG, "capMap.size() = " + allContactCapabilities.size());
        for (Map.Entry<String, Capabilities> entry : allContactCapabilities.entrySet()) {
            buildCursor(entry.getKey(), entry.getValue(), matrixCursor3);
        }
        return matrixCursor3;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    void buildCursor(String str, Capabilities capabilities, MatrixCursor matrixCursor) {
        Set supportedExtensions = capabilities.getSupportedExtensions();
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = supportedExtensions.iterator();
        while (it.hasNext()) {
            stringBuffer.append((String) it.next());
            stringBuffer.append(";");
        }
        String stringBuffer2 = stringBuffer.toString();
        if (stringBuffer2.length() > 0) {
            stringBuffer2 = stringBuffer2.substring(0, stringBuffer2.length() - 1);
        }
        matrixCursor.addRow(new Object[]{0, str, Integer.valueOf(capabilities.hasCapabilities(8) ? 1 : 0), Integer.valueOf(capabilities.hasCapabilities(16) ? 1 : 0), Integer.valueOf(capabilities.hasCapabilities(2) ? 1 : 0), Integer.valueOf(capabilities.hasCapabilities(1) ? 1 : 0), Integer.valueOf(capabilities.hasCapabilities(4) ? 1 : 0), stringBuffer2, Integer.valueOf(capabilities.isAutomata() ? 1 : 0), Long.valueOf(capabilities.getTimestamp())});
    }
}
