package com.sec.internal.ims.servicemodules.options;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.provider.ContactsContract;
import android.util.Log;
import com.sec.ims.extensions.Extensions;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.Debug;
import com.sec.internal.helper.os.SystemWrapper;
import com.sec.internal.ims.core.RegistrationGovernor;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.options.Contact;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class ContactCache {
    private static final int DELAY_REFRESH_COUNT = 300;
    private static final int DELAY_REFRESH_TIME = 300;
    private static final String LOG_TAG = "ContactCache";
    private static final int MAX_COUNT = 1000;
    protected ContactCacheHandler mContactCacheHandler;
    Context mContext;
    protected String mCountryCode;
    private SimpleEventLog mEventLog;
    private UriGenerator mUriGenerator;
    private final List<ContactEventListener> mListeners = new CopyOnWriteArrayList();
    private Mno mMno = Mno.DEFAULT;
    protected final Map<String, Contact> mContactList = new ConcurrentHashMap();
    private final List<String> mRemovedNumbers = new CopyOnWriteArrayList();
    protected ContactObserver mObserver = null;
    private final List<CapabilitiesCache> mCapabilitiesCacheList = new CopyOnWriteArrayList();
    final AtomicBoolean mResyncRequired = new AtomicBoolean();
    final AtomicBoolean mSyncInProgress = new AtomicBoolean();
    private int mUserId = 0;
    private Map<Integer, Long> mLastRefreshTimeInMs = new HashMap();
    private Map<Integer, Long> mPrevRefreshTimeInMs = new HashMap();
    private int mStartIndex = 0;
    protected int mContactCurCount = 0;
    protected boolean mIsThrottle = false;
    protected boolean mIsLimiting = false;
    protected String mLastRawId = null;
    private boolean mIsContactUpdated = false;
    protected Handler mBackgroundHandler = null;
    protected boolean mIsBlockedContactChange = false;
    protected boolean mIsBlockedInitialContactSyncBeforeRegi = false;

    public interface ContactEventListener {
        void onChanged();
    }

    private Uri getRemoteUriwithUserId(Uri uri) {
        return uri;
    }

    public ContactCache(Context context, Map<Integer, CapabilitiesCache> map) {
        this.mContactCacheHandler = null;
        this.mContext = context;
        this.mEventLog = new SimpleEventLog(context, LOG_TAG, 20);
        HandlerThread handlerThread = new HandlerThread("ContactCacheHandler", 10);
        handlerThread.start();
        this.mContactCacheHandler = new ContactCacheHandler(handlerThread.getLooper());
        Iterator<Map.Entry<Integer, CapabilitiesCache>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Integer key = it.next().getKey();
            this.mCapabilitiesCacheList.add(map.get(key));
            this.mLastRefreshTimeInMs.put(key, 0L);
            this.mPrevRefreshTimeInMs.put(key, 0L);
        }
    }

    public void registerListener(ContactEventListener contactEventListener) {
        this.mListeners.add(contactEventListener);
    }

    public void unregisterListener(ContactEventListener contactEventListener) {
        this.mListeners.remove(contactEventListener);
    }

    public void start() {
        String str = LOG_TAG;
        Log.i(str, "start:");
        this.mIsThrottle = false;
        HandlerThread handlerThread = new HandlerThread("BackgroundHandler", 10);
        handlerThread.start();
        this.mBackgroundHandler = new Handler(handlerThread.getLooper());
        if (this.mObserver == null) {
            this.mObserver = new ContactObserver(new Handler());
            Log.i(str, "start: Contact observer for userId " + this.mUserId);
            this.mUserId = Extensions.ActivityManager.getCurrentUser();
            try {
                Extensions.ContentResolver.registerContentObserver(this.mContext.getContentResolver(), ContactsContract.Contacts.CONTENT_URI, false, this.mObserver, this.mUserId);
            } catch (IllegalStateException e) {
                e.printStackTrace();
            }
        }
    }

    public void stop() {
        Log.i(LOG_TAG, "stop:");
        if (this.mObserver != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mObserver);
            this.mObserver = null;
        }
        this.mContactList.clear();
        this.mRemovedNumbers.clear();
        this.mIsBlockedContactChange = false;
        this.mIsBlockedInitialContactSyncBeforeRegi = false;
        for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
            this.mLastRefreshTimeInMs.put(Integer.valueOf(i), 0L);
            this.mPrevRefreshTimeInMs.put(Integer.valueOf(i), 0L);
        }
    }

    public boolean isReady(int i) {
        return this.mLastRefreshTimeInMs.get(Integer.valueOf(i)).longValue() > 0;
    }

    public void setLastRefreshTime(long j, int i) {
        IMSLog.i(LOG_TAG, i, "setLastRefreshTime: mLastRefreshTimeInMs is " + j);
        this.mLastRefreshTimeInMs.put(Integer.valueOf(i), Long.valueOf(j));
    }

    public long getLastRefreshTime(int i) {
        IMSLog.i(LOG_TAG, "getLastRefreshTime: mLastRefreshTimeInMs is " + this.mLastRefreshTimeInMs);
        return this.mLastRefreshTimeInMs.get(Integer.valueOf(i)).longValue();
    }

    public List<String> getNumberlistByContactId(String str) {
        String changeE164ByNumber;
        ArrayList arrayList = new ArrayList();
        try {
            Cursor query = this.mContext.getContentResolver().query(getRemoteUriwithUserId(ContactsContract.CommonDataKinds.Phone.CONTENT_URI), new String[]{"data1", "data4"}, "contact_id = ?", new String[]{str}, null);
            try {
                if (query == null) {
                    Log.e(LOG_TAG, "getNumberlistByContactId: no contact found");
                    if (query != null) {
                        query.close();
                    }
                    return null;
                }
                Log.i(LOG_TAG, "getNumberlistByContactId: found " + query.getCount() + " contacts.");
                if (query.getCount() > 0) {
                    while (query.moveToNext()) {
                        String string = query.getString(0);
                        String string2 = query.getString(1);
                        String checkNumberAndE164 = checkNumberAndE164(string, string2);
                        if (checkNumberAndE164 != null && (changeE164ByNumber = changeE164ByNumber(checkNumberAndE164, string2)) != null) {
                            arrayList.add(changeE164ByNumber);
                        }
                    }
                }
                query.close();
                return arrayList;
            } finally {
            }
        } catch (RuntimeException e) {
            Log.e(LOG_TAG, "getNumberlistByContactId: Exception " + e.getMessage());
            return null;
        }
    }

    public Map<String, Contact> getContacts() {
        HashMap hashMap = new HashMap(this.mContactList);
        this.mContactList.clear();
        return hashMap;
    }

    Map<String, String> getAllNumber() {
        HashMap hashMap = new HashMap();
        for (int i = 0; i < this.mCapabilitiesCacheList.size(); i++) {
            for (String str : this.mCapabilitiesCacheList.get(i).getCapabilitiesNumberWithContactId()) {
                hashMap.put(str, str);
            }
        }
        return hashMap;
    }

    public List<String> getAndFlushRemovedNumbers() {
        ArrayList arrayList = new ArrayList(this.mRemovedNumbers);
        this.mRemovedNumbers.removeAll(arrayList);
        return arrayList;
    }

    String checkNumberAndE164(String str, String str2) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("*67") || str.startsWith("*82")) {
            Log.i(LOG_TAG, "parsing for special character");
            str = str.substring(3);
        }
        if (str.contains("#") || str.contains("*") || str.contains(",") || str.contains("N")) {
            return null;
        }
        if ((str2 == null || "mx".equalsIgnoreCase(this.mCountryCode)) && !UriUtil.isValidNumber(str, this.mCountryCode)) {
            return null;
        }
        return str;
    }

    String changeE164ByNumber(String str, String str2) {
        return (str2 == null || "mx".equalsIgnoreCase(this.mCountryCode)) ? normalize(str) : str2;
    }

    String normalize(String str) {
        String replaceAll = str.replaceAll("[- ()]", "");
        if (this.mUriGenerator != null && "US".equalsIgnoreCase(this.mCountryCode)) {
            return UriUtil.getMsisdnNumber(this.mUriGenerator.getNormalizedUri(replaceAll, true));
        }
        ImsUri parseNumber = UriUtil.parseNumber(replaceAll, this.mCountryCode);
        if (parseNumber == null) {
            Log.e(LOG_TAG, "normalize: invalid number.");
            return replaceAll;
        }
        return UriUtil.getMsisdnNumber(parseNumber);
    }

    private String[] setProjection() {
        return new String[]{CloudMessageProviderContract.BufferDBMMSaddr.CONTACT_ID, "raw_contact_id", "display_name", "data1", "data4"};
    }

    private boolean refresh(int i) {
        Map<? extends String, ? extends Contact> hashMap = new HashMap<>();
        String str = LOG_TAG;
        IMSLog.s(str, "refresh: cc " + this.mCountryCode);
        ContentResolver contentResolver = this.mContext.getContentResolver();
        String[] projection = setProjection();
        boolean z = true;
        String[] strArr = new String[1];
        strArr[0] = Long.toString((this.mIsLimiting ? this.mPrevRefreshTimeInMs : this.mLastRefreshTimeInMs).get(Integer.valueOf(i)).longValue());
        String str2 = "raw_contact_id LIMIT " + this.mStartIndex + ",1000";
        Uri remoteUriwithUserId = getRemoteUriwithUserId(ContactsContract.CommonDataKinds.Phone.CONTENT_URI);
        this.mEventLog.logAndAdd(i, "refresh: mStartIndex " + this.mStartIndex);
        IMSLog.c(LogClass.CC_REFRESH_IDX, "N,REFR:" + this.mStartIndex);
        try {
            Cursor query = contentResolver.query(remoteUriwithUserId, projection, "contact_last_updated_timestamp > ?", strArr, str2);
            try {
                if (query == null) {
                    Log.e(str, "refresh: no contact found");
                    if (query != null) {
                        query.close();
                    }
                    return false;
                }
                if (!this.mIsLimiting) {
                    this.mPrevRefreshTimeInMs.put(Integer.valueOf(i), this.mLastRefreshTimeInMs.get(Integer.valueOf(i)));
                    IMSLog.i(str, i, "refresh: set mPrevRefreshTimeInMs = " + this.mPrevRefreshTimeInMs.get(Integer.valueOf(i)));
                }
                this.mLastRefreshTimeInMs.put(Integer.valueOf(i), Long.valueOf(new Date().getTime()));
                this.mContactCurCount = query.getCount();
                IMSLog.i(str, i, "refresh: found " + this.mContactCurCount + " contacts. mLastRefreshTimeInMs = " + this.mLastRefreshTimeInMs.get(Integer.valueOf(i)));
                this.mEventLog.add(i, "refresh: found " + this.mContactCurCount + " contacts.");
                StringBuilder sb = new StringBuilder();
                sb.append("N,REFR:FOUND:");
                sb.append(this.mContactCurCount);
                IMSLog.c(LogClass.CC_REFRESH_FND, sb.toString());
                if (query.getCount() > 0) {
                    int i2 = 0;
                    while (query.moveToNext()) {
                        i2++;
                        if (i2 % 300 == 0) {
                            try {
                                Thread.sleep(300L);
                            } catch (InterruptedException unused) {
                            }
                        }
                        try {
                            String string = query.getString(0);
                            String string2 = query.getString(1);
                            String string3 = query.getString(2);
                            String string4 = query.getString(3);
                            String string5 = query.getString(4);
                            if (this.mLastRawId != null && Integer.parseInt(string2) <= Integer.parseInt(this.mLastRawId)) {
                                IMSLog.i(LOG_TAG, i, "refresh: ContactUpdated, rawId =" + string2);
                                this.mIsContactUpdated = true;
                            }
                            if (i2 == this.mContactCurCount) {
                                this.mLastRawId = string2;
                            }
                            String checkNumberAndE164 = checkNumberAndE164(string4, string5);
                            if (checkNumberAndE164 != null) {
                                String changeE164ByNumber = changeE164ByNumber(checkNumberAndE164, string5);
                                Contact contact = hashMap.get(string2);
                                if (contact == null) {
                                    contact = this.mContactList.get(string2);
                                }
                                if (contact == null) {
                                    contact = new Contact(string, string2);
                                }
                                contact.setId(string);
                                contact.setName(string3);
                                contact.insertContactNumberIntoList(new Contact.ContactNumber(checkNumberAndE164, changeE164ByNumber == null ? null : changeE164ByNumber.replaceAll("[- ()]", "")));
                                hashMap.put(string2, contact);
                            }
                        } catch (Exception unused2) {
                            Log.e(LOG_TAG, "Exception in cur.getString");
                        }
                    }
                    this.mEventLog.logAndAdd(i, "refresh: mLastRawId = " + this.mLastRawId);
                } else {
                    z = false;
                }
                this.mContactList.clear();
                this.mContactList.putAll(hashMap);
                dumpContactList();
                query.close();
                return z;
            } finally {
            }
        } catch (RuntimeException e) {
            Log.e(LOG_TAG, "refresh: Can not refresh : " + e.getMessage());
            IMSLog.c(LogClass.CC_REFRESH_ER, "N,REFR:ER");
            return false;
        }
    }

    private void dumpContactList() {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (Contact contact : this.mContactList.values()) {
            i++;
            if (i > 40) {
                break;
            }
            sb.append("ContactId (");
            sb.append(contact.getId());
            sb.append(")");
            sb.append("    RawId: ");
            sb.append(contact.getRawId());
            sb.append('\n');
            sb.append("    Name: ");
            sb.append(contact.getName());
            sb.append('\n');
            Iterator<Contact.ContactNumber> it = contact.getContactNumberList().iterator();
            while (it.hasNext()) {
                Contact.ContactNumber next = it.next();
                sb.append("    Number: ");
                sb.append(next.getNumber());
                sb.append('\n');
                sb.append("    E164: ");
                sb.append(next.getNormalizedNumber());
                sb.append('\n');
            }
        }
        IMSLog.s(LOG_TAG, "dump:\n" + sb.toString());
    }

    public void setUriGenerator(UriGenerator uriGenerator) {
        this.mUriGenerator = uriGenerator;
    }

    public void setThrottleContactSync(final boolean z, final int i) {
        Handler handler = this.mBackgroundHandler;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.ContactCache$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ContactCache.this.lambda$setThrottleContactSync$0(z, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setThrottleContactSync$0(boolean z, int i) {
        String str = LOG_TAG;
        Log.i(str, "setThrottleContactSync : " + z);
        if (this.mIsThrottle != z) {
            this.mIsThrottle = z;
            if (z) {
                return;
            }
            if (this.mResyncRequired.get() || this.mIsLimiting) {
                if (this.mIsLimiting) {
                    if (this.mResyncRequired.get()) {
                        processChangeDuringLimiting(i);
                    }
                    this.mStartIndex += 1000;
                    Log.i(str, "setThrottleContactSync : Limiting, mStartIndex = " + this.mStartIndex);
                }
                Log.i(str, "setThrottleContactSync : try to resync");
                sendMessageContactSync();
                this.mResyncRequired.set(false);
            }
        }
    }

    void processChangeDuringLimiting(int i) {
        String str = LOG_TAG;
        IMSLog.i(str, i, "processChangeDuringLimiting: Start.");
        try {
            Cursor query = this.mContext.getContentResolver().query(getRemoteUriwithUserId(ContactsContract.CommonDataKinds.Phone.CONTENT_URI), setProjection(), "contact_last_updated_timestamp > ?", new String[]{Long.toString(this.mLastRefreshTimeInMs.get(Integer.valueOf(i)).longValue())}, "raw_contact_id");
            try {
                if (query == null) {
                    Log.e(str, "processChangeDuringLimiting: no contact found");
                } else {
                    int count = query.getCount();
                    if (count == 0) {
                        Log.i(str, "processChangeDuringLimiting: found 0, removed");
                        processRemovedContact();
                    } else {
                        Log.i(str, "processChangeDuringLimiting: found " + count);
                        HashMap hashMap = new HashMap();
                        boolean z = false;
                        while (true) {
                            if (!query.moveToNext()) {
                                break;
                            }
                            String string = query.getString(1);
                            if (Integer.parseInt(string) > Integer.parseInt(this.mLastRawId)) {
                                Log.i(LOG_TAG, "processChangeDuringLimiting: rawId > mLastRawId, rawId = " + string + ", mLastRawId = " + this.mLastRawId);
                                break;
                            }
                            String string2 = query.getString(0);
                            String string3 = query.getString(2);
                            String string4 = query.getString(3);
                            String string5 = query.getString(4);
                            String checkNumberAndE164 = checkNumberAndE164(string4, string5);
                            if (checkNumberAndE164 != null) {
                                String changeE164ByNumber = changeE164ByNumber(checkNumberAndE164, string5);
                                Contact contact = (Contact) hashMap.get(string);
                                if (contact == null) {
                                    contact = new Contact(string2, string);
                                }
                                contact.setId(string2);
                                contact.setName(string3);
                                contact.insertContactNumberIntoList(new Contact.ContactNumber(checkNumberAndE164, changeE164ByNumber == null ? null : changeE164ByNumber.replaceAll("[- ()]", "")));
                                hashMap.put(string, contact);
                            }
                            z = true;
                        }
                        if (z) {
                            this.mContactList.putAll(hashMap);
                            Log.i(LOG_TAG, "processChangeDuringLimiting: Done. contact updated.");
                            Iterator<ContactEventListener> it = this.mListeners.iterator();
                            while (it.hasNext()) {
                                it.next().onChanged();
                            }
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
            } finally {
            }
        } catch (RuntimeException e) {
            Log.e(LOG_TAG, "processChangeDuringLimiting: Exception " + e.getMessage());
        }
    }

    boolean processRemovedContact() {
        String str = LOG_TAG;
        Log.i(str, "processRemovedContact: Start.");
        Map<String, String> allNumber = getAllNumber();
        if (allNumber == null || allNumber.size() == 0) {
            Log.i(str, "processRemovedContact: No cached numbers. return");
            return false;
        }
        List<String> allNumbersInContactDB = getAllNumbersInContactDB();
        if (allNumbersInContactDB == null || allNumbersInContactDB.size() == 0) {
            Log.i(str, "processRemovedContact: No numbers in Contact DB");
        } else {
            Log.i(str, "processRemovedContact: start remove");
            Iterator<String> it = allNumbersInContactDB.iterator();
            while (it.hasNext()) {
                allNumber.remove(it.next());
            }
        }
        this.mEventLog.logAndAdd("processRemovedContact: Done. " + allNumber.size() + " numbers removed.");
        this.mRemovedNumbers.addAll(allNumber.values());
        return this.mRemovedNumbers.size() > 0;
    }

    List<String> getAllNumbersInContactDB() {
        String changeE164ByNumber;
        ArrayList arrayList = new ArrayList();
        try {
            Cursor query = this.mContext.getContentResolver().query(getRemoteUriwithUserId(ContactsContract.CommonDataKinds.Phone.CONTENT_URI), new String[]{"data1", "data4"}, null, null, null);
            try {
                if (query == null) {
                    Log.e(LOG_TAG, "getAllNumbersInContactDB: no contact found");
                    if (query != null) {
                        query.close();
                    }
                    return null;
                }
                Log.i(LOG_TAG, "getAllNumbersInContactDB: found " + query.getCount() + " contacts.");
                if (query.getCount() > 0) {
                    int i = 0;
                    while (query.moveToNext()) {
                        i++;
                        if (i % 300 == 0) {
                            try {
                                Thread.sleep(300L);
                            } catch (InterruptedException unused) {
                            }
                        }
                        String string = query.getString(0);
                        String string2 = query.getString(1);
                        String checkNumberAndE164 = checkNumberAndE164(string, string2);
                        if (checkNumberAndE164 != null && (changeE164ByNumber = changeE164ByNumber(checkNumberAndE164, string2)) != null) {
                            arrayList.add(changeE164ByNumber);
                        }
                    }
                }
                query.close();
                return arrayList;
            } finally {
            }
        } catch (RuntimeException e) {
            Log.e(LOG_TAG, "getAllNumbersInContactDB: Exception " + e.getMessage());
            return null;
        }
    }

    protected class ContactObserver extends ContentObserver {
        ContactObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            Log.i(ContactCache.LOG_TAG, "===== Contact updated. =====");
            ContactCache contactCache = ContactCache.this;
            if (contactCache.mCountryCode == null) {
                Log.i(ContactCache.LOG_TAG, "No SIM available. bail.");
            } else {
                contactCache.sendMessageContactSync();
            }
        }
    }

    boolean isAllowedContactSync() {
        if (RcsUtils.DualRcs.isDualRcsSettings()) {
            for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
                if (isAllowedContactSync(i)) {
                    return true;
                }
            }
        } else if (isAllowedContactSync(SimUtil.getActiveDataPhoneId())) {
            return true;
        }
        return false;
    }

    boolean isAllowedInitialContactSyncBeforeRegi(int i) {
        return ImsRegistry.getBoolean(i, GlobalSettingsConstants.RCS.RCS_INITIAL_CONTACT_SYNC_BEFORE_REGI, true);
    }

    private boolean isAllowedContactSync(int i) {
        boolean isRcsEnabledinSettings = RcsUtils.UiUtils.isRcsEnabledinSettings(this.mContext, i);
        boolean z = ImsRegistry.getBoolean(i, GlobalSettingsConstants.RCS.CONTACT_SYNC_IN_SWITCH_OFF, true);
        boolean z2 = ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, 0, i) == 1;
        if (!isRcsEnabledinSettings) {
            IMSLog.s(LOG_TAG, i, "isAllowedContactSync: rcs is off in customer.");
            return false;
        }
        if (!z2 && !z) {
            IMSLog.s(LOG_TAG, i, "isAllowedContactSync: CONTACT_SYNC_IN_SWITCH_OFF is false.");
            return false;
        }
        if (SimUtil.getSimMno(i).isChn()) {
            IMSLog.s(LOG_TAG, i, "isAllowedContactSync: Chn always false.");
            return false;
        }
        IMSLog.s(LOG_TAG, i, "isAllowedContactSync: contact sync is allowed");
        return true;
    }

    public boolean getIsBlockedContactChange() {
        return this.mIsBlockedContactChange;
    }

    public void setIsBlockedContactChange(boolean z) {
        this.mIsBlockedContactChange = z;
    }

    public boolean getBlockedInitialContactSyncBeforeRegi() {
        return this.mIsBlockedInitialContactSyncBeforeRegi;
    }

    public void sendMessageContactSync() {
        if (!isAllowedContactSync()) {
            Log.i(LOG_TAG, "sendMessageContactSync: block the contact sync.");
            this.mIsBlockedContactChange = true;
        } else {
            this.mIsBlockedContactChange = false;
        }
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        if (!isAllowedInitialContactSyncBeforeRegi(activeDataPhoneId) && this.mLastRefreshTimeInMs.get(Integer.valueOf(activeDataPhoneId)).longValue() == 0) {
            IMSLog.i(LOG_TAG, activeDataPhoneId, "sendMessageContactSync: block the initial contact sync before regi.");
            this.mIsBlockedInitialContactSyncBeforeRegi = true;
        } else {
            this.mIsBlockedInitialContactSyncBeforeRegi = false;
        }
        if (this.mIsBlockedContactChange || this.mIsBlockedInitialContactSyncBeforeRegi) {
            return;
        }
        IMSLog.i(LOG_TAG, activeDataPhoneId, "sendMessageContactSync: Try contact sync after 3 sec.");
        this.mContactCacheHandler.removeMessages(0);
        ContactCacheHandler contactCacheHandler = this.mContactCacheHandler;
        contactCacheHandler.sendMessageDelayed(contactCacheHandler.obtainMessage(0), RegistrationGovernor.RETRY_AFTER_PDNLOST_MS);
    }

    class ContactCacheHandler extends Handler {
        static final int HANDLE_START_CONTACT_SYNC = 0;

        public ContactCacheHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 0) {
                return;
            }
            Log.i(ContactCache.LOG_TAG, "HANDLE_START_CONTACT_SYNC : ");
            int contactProviderStatus = ContactCache.this.getContactProviderStatus();
            if (contactProviderStatus == 0 || contactProviderStatus == 2) {
                ContactCache.this.onStartContactSync();
            } else if (contactProviderStatus == 1) {
                Log.i(ContactCache.LOG_TAG, "ContactProvider is in busy state");
                IMSLog.c(LogClass.CC_START_SYNC, "N,CP:BUSY");
                ContactCache.this.sendMessageContactSync();
            }
        }
    }

    void onStartContactSync() {
        String str = LOG_TAG;
        Log.i(str, "onStartContactSync : ");
        if (!this.mSyncInProgress.get() && !this.mIsThrottle) {
            this.mSyncInProgress.set(true);
            startContactSync();
            return;
        }
        this.mResyncRequired.set(true);
        Log.i(str, "onStartContactSync : Sync In Progress. Sync will start later, mIsThrottle = " + this.mIsThrottle);
    }

    void startContactSync(Mno mno) {
        Log.i(LOG_TAG, "startContactSync: " + mno);
        this.mMno = mno;
        Handler handler = this.mBackgroundHandler;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.ContactCache$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ContactCache.this.lambda$startContactSync$2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startContactSync$2() {
        if (this.mCountryCode == null) {
            Mno mno = this.mMno;
            if (mno == Mno.DEFAULT) {
                Log.e(LOG_TAG, "startContactSync: operator is unknown. bail");
                this.mSyncInProgress.set(false);
                return;
            }
            this.mCountryCode = mno.getCountryCode();
        }
        final int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        String str = LOG_TAG;
        IMSLog.i(str, activeDataPhoneId, "startContactSync: start caching contacts.");
        boolean refresh = refresh(activeDataPhoneId);
        if (this.mContactCurCount == 1000) {
            this.mIsLimiting = true;
            setThrottleContactSync(true, activeDataPhoneId);
        } else {
            this.mIsLimiting = false;
            this.mStartIndex = 0;
        }
        this.mSyncInProgress.set(false);
        if (this.mResyncRequired.get()) {
            this.mResyncRequired.set(false);
            sendMessageContactSync();
        } else {
            if (!refresh) {
                IMSLog.i(str, activeDataPhoneId, "startContactSync: removed, check removed contacts.");
                refresh = processRemovedContact();
            } else if (this.mIsContactUpdated) {
                this.mIsContactUpdated = false;
                processRemovedContact();
            }
            if (!Debug.isProductShip()) {
                new Thread(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.ContactCache$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContactCache.this.lambda$startContactSync$1(activeDataPhoneId);
                    }
                }).start();
            }
        }
        if (refresh) {
            IMSLog.i(str, activeDataPhoneId, "startContactSync: Done. contact updated.");
            Iterator<ContactEventListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onChanged();
            }
            return;
        }
        IMSLog.i(str, activeDataPhoneId, "startContactSync: Done. contact no found.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startContactSync$1(int i) {
        this.mEventLog.logAndAdd(i, "Explicit GC after sync");
        SystemWrapper.explicitGc();
    }

    void startContactSync() {
        startContactSync(this.mMno);
    }

    public void setMno(Mno mno) {
        String str = LOG_TAG;
        Log.i(str, "setMno: " + mno);
        this.mMno = mno;
        if (this.mCountryCode != null || mno == Mno.DEFAULT) {
            return;
        }
        this.mCountryCode = mno.getCountryCode();
        Log.i(str, "setMno: mCountryCode = " + this.mCountryCode);
    }

    public void resetRefreshTime(int i) {
        this.mLastRefreshTimeInMs.put(Integer.valueOf(i), 0L);
        this.mPrevRefreshTimeInMs.put(Integer.valueOf(i), 0L);
    }

    public int getContactProviderStatus() {
        int i = -1;
        try {
            Cursor query = this.mContext.getContentResolver().query(Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "provider_status"), new String[]{"status"}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        i = query.getInt(0);
                    }
                } finally {
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Exception e) {
            Log.e(LOG_TAG, "getContactProviderStatus: Exception " + e.getMessage());
        }
        Log.i(LOG_TAG, "getContactProviderStatus: " + i);
        return i;
    }

    public void dump() {
        String str = LOG_TAG;
        IMSLog.dump(str, "Dump of " + ContactCache.class.getSimpleName() + ":");
        IMSLog.increaseIndent(str);
        this.mEventLog.dump();
        IMSLog.decreaseIndent(str);
    }
}
