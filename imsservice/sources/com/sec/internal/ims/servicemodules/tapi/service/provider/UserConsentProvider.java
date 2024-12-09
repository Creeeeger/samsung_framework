package com.sec.internal.ims.servicemodules.tapi.service.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.sec.internal.constants.tapi.UserConsentProviderContract;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.servicemodules.euc.data.EucType;
import com.sec.internal.ims.servicemodules.euc.persistence.UserConsentPersistence;
import com.sec.internal.ims.servicemodules.euc.persistence.UserConsentPersistenceNotifier;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.servicemodules.tapi.IUserConsentListener;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class UserConsentProvider extends ContentProvider {
    private static final String LOG_TAG = UserConsentProvider.class.getSimpleName();
    private static final UriMatcher URI_MATCHER;
    private static final int USER_CONSENT_LIST = 1;
    private UserConsentPersistence mPersistence = null;
    private UserConsentPersistenceNotifier mUserConsentPersistenceNotifier;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        URI_MATCHER = uriMatcher;
        uriMatcher.addURI(UserConsentProviderContract.AUTHORITY, "#", 1);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        UserConsentPersistenceNotifier userConsentPersistenceNotifier = UserConsentPersistenceNotifier.getInstance();
        this.mUserConsentPersistenceNotifier = userConsentPersistenceNotifier;
        userConsentPersistenceNotifier.setListener(new IUserConsentListener() { // from class: com.sec.internal.ims.servicemodules.tapi.service.provider.UserConsentProvider.1
            @Override // com.sec.internal.interfaces.ims.servicemodules.tapi.IUserConsentListener
            public void notifyChanged(int i) {
                if (UserConsentProvider.this.getContext() != null) {
                    UserConsentProvider.this.getContext().getContentResolver().notifyChange(Uri.withAppendedPath(UserConsentProviderContract.CONTENT_URI, Integer.toString(i)), null);
                }
            }
        });
        this.mPersistence = new UserConsentPersistence(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String str3;
        boolean z;
        String str4 = LOG_TAG;
        Log.d(str4, "query(Uri, String[], String, String[], String) uri: " + uri);
        if (URI_MATCHER.match(uri) == 1) {
            int parseInt = Integer.parseInt(uri.getLastPathSegment());
            ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(parseInt);
            if (simManagerFromSimSlot != null) {
                str3 = simManagerFromSimSlot.getImsi();
                z = simManagerFromSimSlot.isSimAvailable();
            } else {
                str3 = null;
                z = false;
            }
            IMSLog.s(str4, "query: slot=" + parseInt + ", imsi=" + str3 + ", isSimAvailable=" + z);
            if (str3 == null || str3.isEmpty() || !z) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (String str5 : strArr2) {
                str5.hashCode();
                switch (str5) {
                    case "ACKNOWLEDGEMENT":
                        arrayList.add(EucType.ACKNOWLEDGEMENT);
                        break;
                    case "NOTIFICATION":
                        arrayList.add(EucType.NOTIFICATION);
                        break;
                    case "VOLATILE":
                        arrayList.add(EucType.VOLATILE);
                        break;
                    case "EULA":
                        arrayList.add(EucType.EULA);
                        break;
                    case "PERSISTENT":
                        arrayList.add(EucType.PERSISTENT);
                        break;
                }
            }
            UserConsentPersistence userConsentPersistence = this.mPersistence;
            if (str2 == null) {
                str2 = UserConsentProviderContract.UserConsentList.SORT_ORDER_DEFAULT;
            }
            return userConsentPersistence.getEucList(str, arrayList, str2, str3);
        }
        throw new IllegalArgumentException("Unsupported URI: " + uri);
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        if (URI_MATCHER.match(uri) == 1) {
            int parseInt = Integer.parseInt(uri.getLastPathSegment());
            int removeEuc = this.mPersistence.removeEuc(str, strArr);
            this.mUserConsentPersistenceNotifier.notifyListener(parseInt);
            return removeEuc;
        }
        throw new IllegalArgumentException("Unsupported URI: " + uri);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }
}
