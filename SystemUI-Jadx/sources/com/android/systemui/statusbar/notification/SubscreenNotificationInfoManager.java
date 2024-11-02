package com.android.systemui.statusbar.notification;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.android.systemui.Dependency;
import com.android.systemui.NotiRune;
import com.android.systemui.R;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.statusbar.LockscreenNotificationInfo;
import com.android.systemui.statusbar.notification.collection.NotifCollection;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.SettingsHelper;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenNotificationInfoManager implements ConfigurationController.ConfigurationListener {
    public static final ArrayList mLockscreenNotificationInfoArray = new ArrayList();
    public Context mContext;
    public boolean mIsShownGroup;
    public final NotifCollection mNotifCollection;
    public final SubscreenNotificationDetailAdapter mNotificationDetailAdapter;
    public final SubscreenNotificationGroupAdapter mNotificationGroupAdapter;
    public final SubscreenNotificationListAdapter mNotificationListAdapter;
    public final SettingsHelper mSettingsHelper;
    public final SubscreenNotificationController mSubscreenNotificationController;
    public final ArrayList mRecyclerViewItemHolderArray = new ArrayList();
    public final ArrayList mGroupDataArray = new ArrayList();
    public final Handler mUiHandler = new Handler(Looper.getMainLooper());
    public final ArrayList mReplyWordList = new ArrayList();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DisplayLifecycleObserver implements DisplayLifecycle.Observer {
        public /* synthetic */ DisplayLifecycleObserver(SubscreenNotificationInfoManager subscreenNotificationInfoManager, int i) {
            this();
        }

        @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
        public final void onFolderStateChanged(boolean z) {
            SubscreenNotificationInfoManager subscreenNotificationInfoManager = SubscreenNotificationInfoManager.this;
            SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter = subscreenNotificationInfoManager.mNotificationDetailAdapter;
            int i = 1;
            if (subscreenNotificationDetailAdapter.mNeedToUnlock) {
                Log.e("SubscreenNotificationDetailAdapter", "needToUnlock");
                KeyguardManager keyguardManager = (KeyguardManager) subscreenNotificationDetailAdapter.mContext.getSystemService("keyguard");
                Intent intent = new Intent();
                intent.putExtra("ignoreKeyguardState", true);
                keyguardManager.semSetPendingIntentAfterUnlock(null, intent);
                subscreenNotificationDetailAdapter.cleanAdapter();
            } else if (subscreenNotificationDetailAdapter.mReplyclicked && subscreenNotificationDetailAdapter.mSelectHolder != null) {
                Log.e("SubscreenNotificationDetailAdapter", "showRemoteInput");
                ((ActivityStarter) Dependency.get(ActivityStarter.class)).executeRunnableDismissingKeyguard(new SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda0(subscreenNotificationDetailAdapter.mSelectHolder.mInfo.mKey, i), null, false, true, false);
                subscreenNotificationDetailAdapter.cleanAdapter();
            }
            if (!z) {
                subscreenNotificationInfoManager.setReplyWordList();
            }
        }

        private DisplayLifecycleObserver() {
        }
    }

    public SubscreenNotificationInfoManager(Context context, SubscreenNotificationListAdapter subscreenNotificationListAdapter, SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter, SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter) {
        this.mContext = context;
        this.mNotificationListAdapter = subscreenNotificationListAdapter;
        this.mNotificationDetailAdapter = subscreenNotificationDetailAdapter;
        this.mNotificationGroupAdapter = subscreenNotificationGroupAdapter;
        ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).addObserver(new DisplayLifecycleObserver(this, 0));
        this.mNotifCollection = (NotifCollection) Dependency.get(NotifCollection.class);
        this.mSubscreenNotificationController = (SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class);
        this.mSettingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        ((ConfigurationControllerImpl) ((ConfigurationController) Dependency.get(ConfigurationController.class))).addCallback(this);
        setReplyWordList();
    }

    public static boolean canViewBeCleared(ExpandableNotificationRow expandableNotificationRow) {
        if (expandableNotificationRow == null) {
            return true;
        }
        if (expandableNotificationRow.mEntry.isClearable() && (!expandableNotificationRow.shouldShowPublic() || !expandableNotificationRow.mSensitiveHiddenInGeneral)) {
            return true;
        }
        return false;
    }

    public static boolean checkRemoveNotification() {
        int notificationInfoArraySize = getNotificationInfoArraySize();
        for (int i = 0; i < notificationInfoArraySize; i++) {
            if (canViewBeCleared(((LockscreenNotificationInfo) mLockscreenNotificationInfoArray.get(i)).mRow)) {
                return true;
            }
        }
        return false;
    }

    public static int getNotificationInfoArraySize() {
        ArrayList arrayList = mLockscreenNotificationInfoArray;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public static int removeLockscreenNotificationInfoItem(NotificationEntry notificationEntry) {
        Log.d("SubscreenNotificationInfoManager", "removeLockscreenNotificationInfoItem entry : " + notificationEntry + " >>>>> currentThread : " + Thread.currentThread());
        ArrayList arrayList = mLockscreenNotificationInfoArray;
        if (arrayList != null) {
            for (int i = 0; i < getNotificationInfoArraySize(); i++) {
                if (notificationEntry.mKey.equals(((LockscreenNotificationInfo) arrayList.get(i)).mRow.mEntry.mKey)) {
                    arrayList.remove(i);
                    return i;
                }
            }
            return -1;
        }
        return -1;
    }

    public static void setEntryDismissState(NotificationEntry notificationEntry) {
        NotificationChildrenContainer notificationChildrenContainer;
        int notificationChildCount;
        notificationEntry.setDismissState(NotificationEntry.DismissState.DISMISSED);
        if (notificationEntry.mSbn.getNotification().isGroupSummary() && (notificationChildrenContainer = notificationEntry.row.mChildrenContainer) != null && (notificationChildCount = notificationChildrenContainer.getNotificationChildCount()) > 0) {
            for (int i = 0; i < notificationChildCount; i++) {
                ((ExpandableNotificationRow) ((ArrayList) notificationChildrenContainer.mAttachedChildren).get(i)).mEntry.setDismissState(NotificationEntry.DismissState.DISMISSED);
            }
        }
    }

    public final void addRecyclerViewItemView(SubscreenParentItemViewHolder subscreenParentItemViewHolder) {
        ArrayList arrayList = this.mRecyclerViewItemHolderArray;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            if (((SubscreenParentItemViewHolder) arrayList.get(i)).mInfo.mKey.equals(subscreenParentItemViewHolder.mInfo.mKey)) {
                arrayList.remove(i);
                break;
            }
            i++;
        }
        arrayList.add(subscreenParentItemViewHolder);
    }

    public final void clearAllRecyclerViewItem() {
        this.mRecyclerViewItemHolderArray.clear();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(38:1|(5:200|(1:202)(1:210)|203|(1:205)(1:209)|(1:207)(1:208))|5|(1:9)|10|(3:12|(1:18)(1:16)|17)|19|(3:21|(3:23|(4:25|(3:27|(3:29|(2:31|32)(1:34)|33)|35)|36|(2:38|39)(1:41))(1:42)|40)|43)|44|(1:46)(4:177|(4:179|(1:181)|182|183)|184|(4:186|(1:199)(1:192)|(1:194)(2:196|(1:198))|195))|47|(1:49)(1:176)|50|(3:52|(1:56)(1:172)|(24:58|(5:130|(1:171)(1:134)|135|(1:137)|(4:139|(6:142|(2:144|(1:166)(9:146|(1:148)|149|(1:151)|152|(3:157|158|(1:160))|154|155|156))(1:168)|161|162|156|140)|169|167)(1:170))(1:61)|62|(1:(1:65)(1:66))|67|(1:(1:70)(1:71))|72|(1:74)(1:129)|75|(1:77)(1:128)|78|(1:80)|81|82|83|(1:85)(1:125)|86|(1:88)(1:124)|89|90|(3:92|(4:95|(2:97|98)(2:100|101)|99|93)|102)|103|(1:(3:105|(1:121)(3:107|(1:109)|(3:111|112|(1:116)(0))(1:119))|120)(1:122))|117))|173|(1:175)|62|(0)|67|(0)|72|(0)(0)|75|(0)(0)|78|(0)|81|82|83|(0)(0)|86|(0)(0)|89|90|(0)|103|(2:(0)(0)|120)|117) */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0426, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0427, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x04a9 A[EDGE_INSN: B:122:0x04a9->B:117:0x04a9 BREAK  A[LOOP:3: B:104:0x0474->B:120:0x04a6], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0415 A[Catch: NameNotFoundException -> 0x0426, TryCatch #0 {NameNotFoundException -> 0x0426, blocks: (B:83:0x03db, B:86:0x0408, B:88:0x040c, B:89:0x0419, B:124:0x0415), top: B:82:0x03db }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x040c A[Catch: NameNotFoundException -> 0x0426, TryCatch #0 {NameNotFoundException -> 0x0426, blocks: (B:83:0x03db, B:86:0x0408, B:88:0x040c, B:89:0x0419, B:124:0x0415), top: B:82:0x03db }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0432  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.systemui.statusbar.notification.SubscreenNotificationInfo createItemsData(com.android.systemui.statusbar.notification.row.ExpandableNotificationRow r21) {
        /*
            Method dump skipped, instructions count: 1194
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenNotificationInfoManager.createItemsData(com.android.systemui.statusbar.notification.row.ExpandableNotificationRow):com.android.systemui.statusbar.notification.SubscreenNotificationInfo");
    }

    public final int getGroupDataArraySize() {
        return this.mGroupDataArray.size();
    }

    @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onConfigChanged(Configuration configuration) {
        setReplyWordList();
    }

    public final int removeGroupDataArrayItem(NotificationEntry notificationEntry) {
        if (this.mIsShownGroup) {
            int i = 0;
            while (true) {
                ArrayList arrayList = this.mGroupDataArray;
                if (i >= arrayList.size()) {
                    break;
                }
                if (((SubscreenNotificationInfo) arrayList.get(i)).mKey.equals(notificationEntry.mKey)) {
                    arrayList.remove(i);
                    SubscreenDeviceModelParent subscreenDeviceModelParent = this.mSubscreenNotificationController.mDeviceModel;
                    subscreenDeviceModelParent.getClass();
                    if (!(subscreenDeviceModelParent instanceof SubscreenDeviceModelB5)) {
                        return i + 1;
                    }
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    public final void removeNotification(NotificationEntry notificationEntry) {
        NotificationChildrenContainer notificationChildrenContainer;
        int notificationChildCount;
        ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
        if (expandableNotificationRow != null) {
            expandableNotificationRow.performDismiss(false);
        }
        boolean isGroupSummary = notificationEntry.mSbn.getNotification().isGroupSummary();
        SubscreenNotificationController subscreenNotificationController = this.mSubscreenNotificationController;
        if (isGroupSummary && (notificationChildrenContainer = notificationEntry.row.mChildrenContainer) != null && (notificationChildCount = notificationChildrenContainer.getNotificationChildCount()) > 0) {
            boolean z = false;
            for (int i = 0; i < notificationChildCount; i++) {
                NotificationEntry notificationEntry2 = ((ExpandableNotificationRow) ((ArrayList) notificationChildrenContainer.mAttachedChildren).get(i)).mEntry;
                if (notificationEntry2.canBubble()) {
                    subscreenNotificationController.mDeviceModel.removeMainHashItem(notificationEntry2);
                    z = true;
                }
            }
            if (z) {
                subscreenNotificationController.mDeviceModel.removeMainHashItem(notificationEntry);
            }
        }
        if (notificationEntry.canBubble()) {
            subscreenNotificationController.mDeviceModel.removeMainHashItem(notificationEntry);
        }
        int removeLockscreenNotificationInfoItem = removeLockscreenNotificationInfoItem(notificationEntry);
        if (removeLockscreenNotificationInfoItem >= 0) {
            this.mNotificationListAdapter.notifyItemRemoved(removeLockscreenNotificationInfoItem);
        }
        int removeGroupDataArrayItem = removeGroupDataArrayItem(notificationEntry);
        if (removeGroupDataArrayItem >= 0) {
            this.mNotificationGroupAdapter.notifyItemRemoved(removeGroupDataArrayItem);
        }
        setEntryDismissState(notificationEntry);
    }

    public final void setReplyWordList() {
        String stringValue;
        ArrayList arrayList = this.mReplyWordList;
        if (arrayList.size() > 0) {
            arrayList.clear();
        }
        String[] stringArray = this.mContext.getResources().getStringArray(R.array.subscreen_quick_reply_list);
        SettingsHelper settingsHelper = this.mSettingsHelper;
        settingsHelper.getClass();
        boolean z = NotiRune.NOTI_SUBSCREEN_NOTIFICATION_COMMON;
        String str = null;
        if (!z) {
            stringValue = null;
        } else {
            stringValue = settingsHelper.mItemLists.get("cover_screen_quick_reply_text").getStringValue();
        }
        settingsHelper.getClass();
        if (z) {
            str = settingsHelper.mItemLists.get("cover_screen_quick_reply_text_pos_for_translation").getStringValue();
        }
        if (str == null) {
            arrayList.addAll(Arrays.asList(stringArray));
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(stringValue);
            JSONArray jSONArray2 = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                String string = jSONArray2.getString(i);
                if (!TextUtils.isEmpty(string) && !"-1".equals(string)) {
                    arrayList.add(stringArray[Integer.parseInt(string)]);
                } else {
                    arrayList.add(jSONArray.getString(i));
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public final void setShownGroup(boolean z) {
        Log.e("SubscreenNotificationInfoManager", "setShownGroup : " + z);
        this.mIsShownGroup = z;
    }
}
