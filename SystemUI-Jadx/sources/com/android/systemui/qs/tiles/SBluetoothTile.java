package com.android.systemui.qs.tiles;

import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import com.android.internal.logging.MetricsLogger;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.settingslib.bluetooth.BluetoothUtils;
import com.android.settingslib.bluetooth.CachedBluetoothDevice;
import com.android.settingslib.bluetooth.LocalBluetoothManager;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.DetailAdapter;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qp.SubscreenQsPanelController;
import com.android.systemui.qp.util.SubscreenUtil;
import com.android.systemui.qs.QSDetailItems;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QsEventLogger;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.pipeline.domain.interactor.PanelInteractor;
import com.android.systemui.qs.tileimpl.QSTileImpl;
import com.android.systemui.qs.tileimpl.SQSTileImpl;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.statusbar.policy.SBluetoothController;
import com.android.systemui.statusbar.policy.SBluetoothControllerImpl;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import com.samsung.android.bluetooth.SemBluetoothAudioCast;
import com.samsung.android.bluetooth.SemBluetoothCastDevice;
import com.samsung.android.settingslib.bluetooth.bluetoothcast.AudioCastProfile;
import com.samsung.android.settingslib.bluetooth.bluetoothcast.CachedBluetoothCastDevice;
import com.samsung.android.settingslib.bluetooth.bluetoothcast.CachedBluetoothCastDeviceManager;
import com.samsung.android.settingslib.bluetooth.bluetoothcast.LocalBluetoothCastProfile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SBluetoothTile extends SQSTileImpl {
    public boolean isHavingConvertView;
    public final ActivityStarter mActivityStarter;
    public final ArrayList mAvailableItemList;
    public int mBlueToothState;
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final AnonymousClass3 mCallback;
    public final SBluetoothController mController;
    public final BluetoothDetailAdapter mDetailAdapter;
    public boolean mDetailListening;
    public final DisplayLifecycle mDisplayLifecycle;
    public boolean mDoStopScan;
    public final AnonymousClass1 mFoldStateChangedListener;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public final ArrayList mPairedItemList;
    public final PanelInteractor mPanelInteractor;
    public final SettingsHelper mSettingsHelper;
    public final QSTile.BooleanState mStateBeforeClick;
    public SubscreenBluetoothTileReceiver mSubscreenBlueotoothTileReceiver;
    public final SubscreenQsPanelController mSubscreenQsPanelController;
    public static final boolean DEBUG = Log.isLoggable("SBluetoothTile", 3);
    public static final Intent BLUETOOTH_SETTINGS = new Intent("android.settings.BLUETOOTH_SETTINGS");

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class BluetoothDetailAdapter implements DetailAdapter, QSDetailItems.Callback {
        public static final /* synthetic */ int $r8$clinit = 0;
        public ViewGroup mAvailable;
        public QSDetailItems mAvailableDevicesItems;
        public View mAvailableDevicesTitle;
        public QSDetailItems mItems;
        public ViewGroup mMusicShare;
        public QSDetailItems mMusicShareItems;
        public View mMusicShareTitleDivider;
        public ViewGroup mPairedDevices;

        /* renamed from: -$$Nest$mupdateMusicShareItems, reason: not valid java name */
        public static void m1338$$Nest$mupdateMusicShareItems(BluetoothDetailAdapter bluetoothDetailAdapter) {
            ArrayList<CachedBluetoothCastDevice> arrayList;
            String str;
            bluetoothDetailAdapter.getClass();
            Log.d("SBluetoothTile", "updateMusicShareItems()");
            if (QpRune.QUICK_BLUETOOTH_MUSIC_SHARE && bluetoothDetailAdapter.mMusicShareItems != null) {
                LocalBluetoothManager localBluetoothManager = ((SBluetoothControllerImpl) SBluetoothTile.this.mController).mLocalBluetoothManager;
                if (localBluetoothManager != null) {
                    CachedBluetoothCastDeviceManager cachedBluetoothCastDeviceManager = localBluetoothManager.mCachedCastDeviceManager;
                    synchronized (cachedBluetoothCastDeviceManager) {
                        arrayList = new ArrayList(cachedBluetoothCastDeviceManager.mCachedCastDevices);
                    }
                } else {
                    arrayList = null;
                }
                if (arrayList == null) {
                    Log.d("SBluetoothTile", "getCachedCastDevices() is null.");
                    return;
                }
                ArrayList arrayList2 = new ArrayList();
                Collections.sort(arrayList);
                for (CachedBluetoothCastDevice cachedBluetoothCastDevice : arrayList) {
                    QSDetailItems.Item item = new QSDetailItems.Item();
                    item.overlay = cachedBluetoothCastDevice.getBtCastDrawable();
                    item.line1 = cachedBluetoothCastDevice.getName();
                    int maxConnectionState = cachedBluetoothCastDevice.getMaxConnectionState();
                    item.isActive = cachedBluetoothCastDevice.isConnected();
                    ArrayList arrayList3 = new ArrayList();
                    synchronized (cachedBluetoothCastDevice.mCastProfiles) {
                        arrayList3.addAll(cachedBluetoothCastDevice.mCastProfiles);
                    }
                    List unmodifiableList = Collections.unmodifiableList(arrayList3);
                    int i = 0;
                    boolean z = false;
                    boolean z2 = false;
                    while (true) {
                        if (i < unmodifiableList.size()) {
                            LocalBluetoothCastProfile localBluetoothCastProfile = (LocalBluetoothCastProfile) unmodifiableList.get(i);
                            if (localBluetoothCastProfile == null) {
                                Log.d(cachedBluetoothCastDevice.TAG, "getConnectionSummary :: profile is null");
                            } else {
                                int castProfileConnectionState = cachedBluetoothCastDevice.getCastProfileConnectionState(localBluetoothCastProfile);
                                if (castProfileConnectionState != 0) {
                                    if (castProfileConnectionState != 1) {
                                        if (castProfileConnectionState != 2) {
                                            if (castProfileConnectionState == 3) {
                                                str = cachedBluetoothCastDevice.mContext.getString(BluetoothUtils.getConnectionStateSummary(castProfileConnectionState));
                                                break;
                                            }
                                        } else if (localBluetoothCastProfile instanceof AudioCastProfile) {
                                            z = true;
                                            z2 = true;
                                        } else {
                                            z = true;
                                        }
                                    } else {
                                        str = cachedBluetoothCastDevice.mContext.getString(R.string.bluetooth_cast_waiting_auth, cachedBluetoothCastDevice.mCastDevice.getPeerName());
                                        break;
                                    }
                                } else {
                                    String str2 = cachedBluetoothCastDevice.mErrorMsg;
                                    if (str2 != null && !TextUtils.isEmpty(str2)) {
                                        str = cachedBluetoothCastDevice.mErrorMsg;
                                    } else {
                                        str = cachedBluetoothCastDevice.mContext.getString(R.string.bluetooth_cast_via, cachedBluetoothCastDevice.mCastDevice.getPeerName());
                                    }
                                }
                            }
                            i++;
                        } else if (z && z2) {
                            str = cachedBluetoothCastDevice.mContext.getString(R.string.bluetooth_cast_connected_via, cachedBluetoothCastDevice.mCastDevice.getPeerName());
                        } else {
                            str = null;
                        }
                    }
                    item.line2 = str;
                    item.tag = cachedBluetoothCastDevice;
                    item.updateIconSize = true;
                    if (maxConnectionState == 1 || maxConnectionState == 3) {
                        item.isInProgress = true;
                    }
                    arrayList2.add(item);
                }
                if (arrayList2.size() > 0) {
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        Objects.toString(((QSDetailItems.Item) it.next()).line1);
                    }
                }
                bluetoothDetailAdapter.mMusicShareItems.setItems((QSDetailItems.Item[]) arrayList2.toArray(new QSDetailItems.Item[arrayList2.size()]));
                bluetoothDetailAdapter.mMusicShareItems.post(new Runnable() { // from class: com.android.systemui.qs.tiles.SBluetoothTile.BluetoothDetailAdapter.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i2;
                        if (BluetoothDetailAdapter.this.mMusicShareItems.getItemCount() > 0) {
                            i2 = 0;
                        } else {
                            i2 = 8;
                        }
                        BluetoothDetailAdapter.this.mMusicShareTitleDivider.setVisibility(i2);
                        BluetoothDetailAdapter.this.mMusicShareItems.setVisibility(i2);
                    }
                });
            }
        }

        public BluetoothDetailAdapter() {
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final View createDetailView(Context context, View view, ViewGroup viewGroup) {
            int i;
            SBluetoothTile sBluetoothTile = SBluetoothTile.this;
            if (!sBluetoothTile.isHavingConvertView) {
                view = null;
            }
            if (view == null) {
                view = LayoutInflater.from(sBluetoothTile.mContext).inflate(R.layout.qs_detail_bluetooth, viewGroup, false);
                ViewGroup viewGroup2 = (ViewGroup) view.findViewById(R.id.paired_devices);
                this.mPairedDevices = viewGroup2;
                QSDetailItems convertOrInflate = QSDetailItems.convertOrInflate(context, viewGroup2);
                this.mItems = convertOrInflate;
                this.mPairedDevices.addView(convertOrInflate);
                ViewGroup viewGroup3 = (ViewGroup) view.findViewById(R.id.available_devices);
                this.mAvailable = viewGroup3;
                QSDetailItems convertOrInflate2 = QSDetailItems.convertOrInflate(context, viewGroup3);
                this.mAvailableDevicesItems = convertOrInflate2;
                convertOrInflate2.setTagSuffix("Bluetooth.Available");
                this.mAvailable.addView(this.mAvailableDevicesItems);
                this.mAvailableDevicesTitle = this.mAvailable.findViewById(R.id.available_devices_title);
                if (QpRune.QUICK_BLUETOOTH_MUSIC_SHARE) {
                    ViewGroup viewGroup4 = (ViewGroup) view.findViewById(R.id.music_share_devices);
                    this.mMusicShare = viewGroup4;
                    QSDetailItems convertOrInflate3 = QSDetailItems.convertOrInflate(context, viewGroup4);
                    this.mMusicShareItems = convertOrInflate3;
                    this.mMusicShare.addView(convertOrInflate3);
                    this.mMusicShareTitleDivider = this.mMusicShare.findViewById(R.id.music_share_title_divider);
                } else {
                    ViewGroup viewGroup5 = (ViewGroup) view.findViewById(R.id.music_share_devices);
                    this.mMusicShare = viewGroup5;
                    viewGroup5.setVisibility(8);
                }
                sBluetoothTile.isHavingConvertView = true;
            }
            QSDetailItems qSDetailItems = this.mAvailableDevicesItems;
            if (((QSTile.BooleanState) sBluetoothTile.mState).value) {
                i = R.string.quick_settings_bluetooth_scanning;
            } else {
                i = R.string.quick_settings_bluetooth_detail_off_text;
            }
            qSDetailItems.setEmptyState(i);
            this.mAvailableDevicesItems.setCallback(this);
            this.mItems.setTagSuffix("Bluetooth");
            this.mItems.setEmptyState(R.string.quick_settings_bluetooth_detail_empty_text);
            this.mItems.setCallback(this);
            if (QpRune.QUICK_BLUETOOTH_MUSIC_SHARE) {
                this.mMusicShareItems.setTagSuffix("Bluetooth.InstantSession");
                this.mMusicShareItems.setCallback(this);
            }
            ((SQSTileImpl) sBluetoothTile).mHandler.post(new Runnable() { // from class: com.android.systemui.qs.tiles.SBluetoothTile.BluetoothDetailAdapter.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (SBluetoothTile.this.mDetailAdapter.getToggleState().booleanValue()) {
                        SBluetoothTile.this.mDetailAdapter.updateItems();
                        if (QpRune.QUICK_BLUETOOTH_MUSIC_SHARE) {
                            BluetoothDetailAdapter.m1338$$Nest$mupdateMusicShareItems(SBluetoothTile.this.mDetailAdapter);
                        }
                    }
                }
            });
            setItemsVisible(((QSTile.BooleanState) sBluetoothTile.mState).value);
            return view;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final boolean disallowStartSettingsIntent() {
            Log.d("SBluetoothTile", "disallowStartSettingsIntent");
            SBluetoothTile.this.mDoStopScan = false;
            return false;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final int getMetricsCategory() {
            return 150;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Intent getSettingsIntent() {
            return SBluetoothTile.BLUETOOTH_SETTINGS;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final CharSequence getTitle() {
            boolean z = SBluetoothTile.DEBUG;
            return SBluetoothTile.this.mContext.getString(R.string.quick_settings_bluetooth_label);
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final boolean getToggleEnabled() {
            SBluetoothController sBluetoothController = SBluetoothTile.this.mController;
            if (((SBluetoothControllerImpl) sBluetoothController).mState != 10 && ((SBluetoothControllerImpl) sBluetoothController).mState != 12) {
                return false;
            }
            return true;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Boolean getToggleState() {
            boolean z = SBluetoothTile.DEBUG;
            return Boolean.valueOf(((QSTile.BooleanState) SBluetoothTile.this.mState).value);
        }

        @Override // com.android.systemui.qs.QSDetailItems.Callback
        public final void onDetailItemClick(QSDetailItems.Item item) {
            Object obj;
            boolean z;
            boolean z2;
            if (item != null && (obj = item.tag) != null) {
                if (QpRune.QUICK_BLUETOOTH_MUSIC_SHARE && (obj instanceof CachedBluetoothCastDevice)) {
                    CachedBluetoothCastDevice cachedBluetoothCastDevice = (CachedBluetoothCastDevice) obj;
                    if (cachedBluetoothCastDevice.isConnected()) {
                        cachedBluetoothCastDevice.disconnect();
                        return;
                    }
                    if (Settings.System.getInt(cachedBluetoothCastDevice.mContext.getContentResolver(), "dexonpc_connection_state", 0) == 3) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        Log.d(cachedBluetoothCastDevice.TAG, "Dex is enabled, so connect request will be rejected");
                        cachedBluetoothCastDevice.toastHandler.post(new CachedBluetoothCastDevice.ToastRunnable(cachedBluetoothCastDevice.mContext.getString(R.string.bluetoothcast_warn_dlg_msg_dex), 0));
                        cachedBluetoothCastDevice.dispatchAttributesChanged();
                        return;
                    }
                    Iterator it = cachedBluetoothCastDevice.mCastProfiles.iterator();
                    while (it.hasNext()) {
                        LocalBluetoothCastProfile localBluetoothCastProfile = (LocalBluetoothCastProfile) it.next();
                        String str = cachedBluetoothCastDevice.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append(String.valueOf(cachedBluetoothCastDevice.mCastProfiles.size()));
                        sb.append("/");
                        if (localBluetoothCastProfile == null) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        sb.append(String.valueOf(z2));
                        Log.d(str, sb.toString());
                        if (localBluetoothCastProfile != null) {
                            SemBluetoothCastDevice semBluetoothCastDevice = cachedBluetoothCastDevice.mCastDevice;
                            AudioCastProfile audioCastProfile = (AudioCastProfile) localBluetoothCastProfile;
                            Log.d(audioCastProfile.TAG, "connect");
                            SemBluetoothAudioCast semBluetoothAudioCast = audioCastProfile.mService;
                            if (semBluetoothAudioCast != null) {
                                semBluetoothAudioCast.connect(semBluetoothCastDevice);
                            }
                        }
                    }
                    return;
                }
                CachedBluetoothDevice cachedBluetoothDevice = (CachedBluetoothDevice) obj;
                boolean isConnected = cachedBluetoothDevice.isConnected();
                SBluetoothTile sBluetoothTile = SBluetoothTile.this;
                if (isConnected) {
                    SBluetoothControllerImpl sBluetoothControllerImpl = (SBluetoothControllerImpl) sBluetoothTile.mController;
                    if (sBluetoothControllerImpl.mLocalBluetoothManager != null) {
                        sBluetoothControllerImpl.scan(false);
                        cachedBluetoothDevice.disconnect();
                        return;
                    }
                    return;
                }
                if (cachedBluetoothDevice.getMaxConnectionState() == 0) {
                    SBluetoothControllerImpl sBluetoothControllerImpl2 = (SBluetoothControllerImpl) sBluetoothTile.mController;
                    if (sBluetoothControllerImpl2.mLocalBluetoothManager != null) {
                        sBluetoothControllerImpl2.scan(false);
                        cachedBluetoothDevice.connect$1();
                    }
                }
            }
        }

        public final void setItemsVisible(boolean z) {
            if (this.mItems == null) {
                return;
            }
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("setItemsVisible = ", z, "SBluetoothTile");
            if (!z) {
                this.mItems.setItems(null);
                this.mAvailableDevicesItems.setItems(null);
                if (QpRune.QUICK_BLUETOOTH_MUSIC_SHARE) {
                    this.mMusicShareItems.setItems(null);
                }
                boolean z2 = SBluetoothTile.DEBUG;
                SBluetoothTile.this.mUiHandler.postAtFrontOfQueue(new Runnable() { // from class: com.android.systemui.qs.tiles.SBluetoothTile.BluetoothDetailAdapter.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        BluetoothDetailAdapter.this.mPairedDevices.setVisibility(8);
                        BluetoothDetailAdapter.this.mAvailable.findViewById(R.id.available_devices_group).setVisibility(8);
                        if (QpRune.QUICK_BLUETOOTH_MUSIC_SHARE) {
                            BluetoothDetailAdapter.this.mMusicShareTitleDivider.setVisibility(8);
                            BluetoothDetailAdapter.this.mMusicShareItems.setVisibility(8);
                        }
                    }
                });
            }
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final void setToggleState(boolean z) {
            int i;
            boolean z2 = SBluetoothTile.DEBUG;
            SBluetoothTile sBluetoothTile = SBluetoothTile.this;
            MetricsLogger.action(sBluetoothTile.mContext, 154, z);
            Log.d("SBluetoothTile", "setToggleState state = " + z);
            if (!((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isBluetoothTileBlocked() && !sBluetoothTile.isBlockedByEASPolicy()) {
                if (((KeyguardStateControllerImpl) sBluetoothTile.mKeyguardStateController).mShowing && sBluetoothTile.mKeyguardUpdateMonitor.isSecure() && !sBluetoothTile.mKeyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser()) && sBluetoothTile.mSettingsHelper.isLockFunctionsEnabled()) {
                    sBluetoothTile.mPanelInteractor.forceCollapsePanels();
                    sBluetoothTile.mActivityStarter.postQSRunnableDismissingKeyguard(new SBluetoothTile$$ExternalSyntheticLambda0(this, 2));
                    sBluetoothTile.fireToggleStateChanged(getToggleState().booleanValue());
                    return;
                }
                if (!z) {
                    ((SBluetoothControllerImpl) sBluetoothTile.mController).scan(false);
                    if (QpRune.QUICK_BLUETOOTH_MUSIC_SHARE) {
                        ((SBluetoothControllerImpl) sBluetoothTile.mController).scanMusicShareDevices(false, sBluetoothTile.mDetailListening);
                    }
                }
                sBluetoothTile.onToggleStateChange(z);
                ((SBluetoothControllerImpl) sBluetoothTile.mController).setBluetoothEnabled(z, false);
                if (sBluetoothTile.isBlockedByEASPolicy()) {
                    sBluetoothTile.onToggleStateChange(getToggleState().booleanValue());
                    return;
                }
                QSDetailItems qSDetailItems = this.mAvailableDevicesItems;
                if (z) {
                    i = R.string.quick_settings_bluetooth_scanning;
                } else {
                    i = R.string.quick_settings_bluetooth_detail_off_text;
                }
                qSDetailItems.setEmptyState(i);
                return;
            }
            sBluetoothTile.showItPolicyToast();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:139:0x0239  */
        /* JADX WARN: Type inference failed for: r0v129 */
        /* JADX WARN: Type inference failed for: r0v130 */
        /* JADX WARN: Type inference failed for: r0v25 */
        /* JADX WARN: Type inference failed for: r0v36 */
        /* JADX WARN: Type inference failed for: r0v37 */
        /* JADX WARN: Type inference failed for: r0v38 */
        /* JADX WARN: Type inference failed for: r8v10, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r8v16 */
        /* JADX WARN: Type inference failed for: r8v17 */
        /* JADX WARN: Type inference failed for: r8v18 */
        /* JADX WARN: Type inference failed for: r8v27 */
        /* JADX WARN: Type inference failed for: r8v40 */
        /* JADX WARN: Type inference failed for: r8v41 */
        /* JADX WARN: Type inference failed for: r8v42 */
        /* JADX WARN: Type inference failed for: r8v44, types: [java.lang.CharSequence] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void updateItems() {
            /*
                Method dump skipped, instructions count: 1229
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.SBluetoothTile.BluetoothDetailAdapter.updateItems():void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SubscreenBluetoothTileReceiver extends BroadcastReceiver {
        public SubscreenBluetoothTileReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("BLUETOOTH_STATE_CHANGE")) {
                SBluetoothTile.this.handleClick(null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.systemui.qs.tiles.SBluetoothTile$1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.systemui.qs.tiles.SBluetoothTile$3, java.lang.Object] */
    public SBluetoothTile(QSHost qSHost, QsEventLogger qsEventLogger, Looper looper, Handler handler, SettingsHelper settingsHelper, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger, SBluetoothController sBluetoothController, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardStateController keyguardStateController, PanelInteractor panelInteractor, DisplayLifecycle displayLifecycle, BroadcastDispatcher broadcastDispatcher) {
        super(qSHost, qsEventLogger, looper, handler, falsingManager, metricsLogger, statusBarStateController, activityStarter, qSLogger);
        this.mDoStopScan = true;
        QSTile.BooleanState booleanState = new QSTile.BooleanState();
        this.mStateBeforeClick = booleanState;
        this.mSubscreenQsPanelController = null;
        this.mPairedItemList = new ArrayList();
        this.mAvailableItemList = new ArrayList();
        ?? r2 = new DisplayLifecycle.Observer() { // from class: com.android.systemui.qs.tiles.SBluetoothTile.1
            @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
            public final void onFolderStateChanged(boolean z) {
                if (!QpRune.QUICK_PANEL_SUBSCREEN) {
                    SBluetoothTile sBluetoothTile = SBluetoothTile.this;
                    if (z) {
                        sBluetoothTile.mSubscreenQsPanelController.getInstance(2).registerReceiver(false);
                    } else {
                        sBluetoothTile.mSubscreenQsPanelController.getInstance(2).unRegisterReceiver(false);
                    }
                }
            }
        };
        this.mFoldStateChangedListener = r2;
        ?? r3 = new SBluetoothController.SCallback() { // from class: com.android.systemui.qs.tiles.SBluetoothTile.3
            @Override // com.android.systemui.statusbar.policy.BluetoothController.Callback
            public final void onBluetoothDevicesChanged() {
                boolean z = SBluetoothTile.DEBUG;
                ((SQSTileImpl) SBluetoothTile.this).mHandler.post(new Runnable() { // from class: com.android.systemui.qs.tiles.SBluetoothTile.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (SBluetoothTile.DEBUG) {
                            Log.d("SBluetoothTile", "onBluetoothDevicesChanged ");
                        }
                        SBluetoothTile.this.refreshState(null);
                        SBluetoothTile sBluetoothTile = SBluetoothTile.this;
                        if (sBluetoothTile.mDetailListening) {
                            boolean booleanValue = sBluetoothTile.mDetailAdapter.getToggleState().booleanValue();
                            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("onBluetoothDevicesChanged update: ", booleanValue, "SBluetoothTile");
                            if (booleanValue) {
                                SBluetoothTile.this.mDetailAdapter.updateItems();
                                if (QpRune.QUICK_BLUETOOTH_MUSIC_SHARE) {
                                    BluetoothDetailAdapter.m1338$$Nest$mupdateMusicShareItems(SBluetoothTile.this.mDetailAdapter);
                                }
                            }
                        }
                    }
                });
            }

            @Override // com.android.systemui.statusbar.policy.SBluetoothController.SCallback
            public final void onBluetoothScanStateChanged(boolean z) {
                SBluetoothTile sBluetoothTile = SBluetoothTile.this;
                sBluetoothTile.fireScanStateChanged(z);
                if (sBluetoothTile.mDetailListening && !z) {
                    ((SQSTileImpl) sBluetoothTile).mHandler.post(new Runnable() { // from class: com.android.systemui.qs.tiles.SBluetoothTile.3.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean booleanValue = SBluetoothTile.this.mDetailAdapter.getToggleState().booleanValue();
                            if (SBluetoothTile.DEBUG) {
                                KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("onBluetoothScanStateChanged update = ", booleanValue, "SBluetoothTile");
                            }
                            if (booleanValue) {
                                SBluetoothTile.this.mDetailAdapter.updateItems();
                            }
                        }
                    });
                }
                if (!z) {
                    SystemUIAnalytics.sendEventLog(sBluetoothTile.mAvailableItemList.size(), SystemUIAnalytics.sCurrentScreenID, "4919");
                }
            }

            @Override // com.android.systemui.statusbar.policy.BluetoothController.Callback
            public final void onBluetoothStateChange(boolean z) {
                boolean z2;
                SBluetoothTile sBluetoothTile = SBluetoothTile.this;
                sBluetoothTile.refreshState(null);
                StringBuilder sb = new StringBuilder("onBluetoothStateChange enabled: ");
                sb.append(z);
                sb.append(" isShowingDetail(): ");
                ActionBarContextView$$ExternalSyntheticOutline0.m(sb, sBluetoothTile.mDetailListening, "SBluetoothTile");
                SBluetoothController sBluetoothController2 = sBluetoothTile.mController;
                int i = ((SBluetoothControllerImpl) sBluetoothController2).mState;
                if (i == 12) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (sBluetoothTile.mDetailListening) {
                    ListPopupWindow$$ExternalSyntheticOutline0.m("onBluetoothStateChange isShowingDetail bluetoothState: ", i, "SBluetoothTile");
                    if (i == 12 || i == 10 || i == 13) {
                        if (z2) {
                            ((SBluetoothControllerImpl) sBluetoothController2).setScanMode(23);
                        }
                        ((SBluetoothControllerImpl) sBluetoothController2).scan(z2);
                        sBluetoothTile.mDetailAdapter.setItemsVisible(z2);
                        if (i == 10) {
                            sBluetoothTile.fireScanStateChanged(false);
                        }
                    }
                }
            }

            @Override // com.android.systemui.statusbar.policy.SBluetoothController.SCallback
            public final void onMusicShareDiscoveryStateChanged(boolean z) {
                SBluetoothTile sBluetoothTile = SBluetoothTile.this;
                if (sBluetoothTile.mDetailListening) {
                    if (SBluetoothTile.DEBUG) {
                        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("onMusicShareDiscoveryStateChanged() : ", z, "SBluetoothTile");
                    }
                    ((SBluetoothControllerImpl) sBluetoothTile.mController).scanMusicShareDevices(z, sBluetoothTile.mDetailListening);
                }
            }
        };
        this.mCallback = r3;
        this.mController = sBluetoothController;
        this.mActivityStarter = activityStarter;
        this.mSettingsHelper = settingsHelper;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mKeyguardStateController = keyguardStateController;
        this.mDetailAdapter = new BluetoothDetailAdapter();
        sBluetoothController.observe(((QSTileImpl) this).mLifecycle, r3);
        booleanState.spec = "bluetooth";
        this.mBlueToothState = ((SBluetoothControllerImpl) sBluetoothController).mState;
        this.isHavingConvertView = false;
        this.mPanelInteractor = panelInteractor;
        if (QpRune.QUICK_SETTINGS_SUBSCREEN) {
            this.mDisplayLifecycle = displayLifecycle;
            this.mSubscreenQsPanelController = (SubscreenQsPanelController) Dependency.get(SubscreenQsPanelController.class);
            displayLifecycle.addObserver(r2);
        } else {
            this.mFoldStateChangedListener = null;
        }
        if (QpRune.QUICK_PANEL_SUBSCREEN) {
            this.mBroadcastDispatcher = broadcastDispatcher;
            if (this.mSubscreenBlueotoothTileReceiver == null && broadcastDispatcher != null) {
                SubscreenBluetoothTileReceiver subscreenBluetoothTileReceiver = new SubscreenBluetoothTileReceiver();
                this.mSubscreenBlueotoothTileReceiver = subscreenBluetoothTileReceiver;
                broadcastDispatcher.registerReceiver(subscreenBluetoothTileReceiver, new IntentFilter("BLUETOOTH_STATE_CHANGE"), null, UserHandle.ALL, 2, "com.samsung.systemui.permission.BLUETOOTH_STATE_CHANGE");
            }
        }
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final DetailAdapter getDetailAdapter() {
        return this.mDetailAdapter;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final Intent getLongClickIntent() {
        if (!((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isBluetoothTileBlocked() && !isBlockedByEASPolicy()) {
            Log.d("SBluetoothTile", " getLongClickIntent is called:++++ ");
            return null;
        }
        showItPolicyToast();
        return null;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final int getMetricsCategory() {
        return 113;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final CharSequence getTileLabel() {
        return this.mContext.getString(R.string.quick_settings_bluetooth_label);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleClick(final View view) {
        Object obj;
        Log.d("SBluetoothTile", " handleClick is called:++++ ");
        QSTile.BooleanState booleanState = (QSTile.BooleanState) this.mState;
        boolean z = booleanState.value;
        SBluetoothController sBluetoothController = this.mController;
        if (!z && booleanState.state == 2) {
            booleanState.value = ((SBluetoothControllerImpl) sBluetoothController).mEnabled;
        }
        boolean z2 = booleanState.value;
        if (!((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isBluetoothTileBlocked() && !isBlockedByEASPolicy()) {
            boolean z3 = ((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing;
            DisplayLifecycle displayLifecycle = this.mDisplayLifecycle;
            ActivityStarter activityStarter = this.mActivityStarter;
            if (z3) {
                KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
                if (keyguardUpdateMonitor.isSecure() && !keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser()) && this.mSettingsHelper.isLockFunctionsEnabled()) {
                    if (QpRune.QUICK_PANEL_SUBSCREEN && displayLifecycle != null && !displayLifecycle.mIsFolderOpened) {
                        ((SubscreenUtil) Dependency.get(SubscreenUtil.class)).showLockscreenOnCoverScreen(this.mContext, "BLUETOOTH_STATE_CHANGE");
                        return;
                    } else {
                        activityStarter.postQSRunnableDismissingKeyguard(new Runnable() { // from class: com.android.systemui.qs.tiles.SBluetoothTile$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                SBluetoothTile.this.handleClick(view);
                            }
                        });
                        return;
                    }
                }
            }
            SBluetoothControllerImpl sBluetoothControllerImpl = (SBluetoothControllerImpl) sBluetoothController;
            if (!sBluetoothControllerImpl.canConfigBluetooth()) {
                activityStarter.postStartActivityDismissingKeyguard(new Intent("android.settings.BLUETOOTH_SETTINGS"), 0);
                return;
            }
            ((QSTile.BooleanState) this.mState).copyTo(this.mStateBeforeClick);
            if (z2) {
                obj = null;
            } else {
                obj = SQSTileImpl.ARG_SHOW_TRANSIENT_ENABLING;
            }
            refreshState(obj);
            sBluetoothControllerImpl.setBluetoothEnabled(!z2, true);
            if (QpRune.QUICK_PANEL_SUBSCREEN && displayLifecycle != null && !displayLifecycle.mIsFolderOpened) {
                SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "QPBE2017");
                return;
            }
            return;
        }
        if (QpRune.QUICK_PANEL_SUBSCREEN) {
            showItPolicyToastOnSubScreen(getSubScreenContext());
        } else {
            showItPolicyToast();
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleDestroy() {
        SubscreenBluetoothTileReceiver subscreenBluetoothTileReceiver;
        BroadcastDispatcher broadcastDispatcher;
        super.handleDestroy();
        Log.d("SBluetoothTile", "handleDestroy");
        try {
            this.mUiHandler.post(new Runnable() { // from class: com.android.systemui.qs.tiles.SBluetoothTile.2
                @Override // java.lang.Runnable
                public final void run() {
                    DisplayLifecycle displayLifecycle;
                    SBluetoothTile sBluetoothTile = SBluetoothTile.this;
                    AnonymousClass1 anonymousClass1 = sBluetoothTile.mFoldStateChangedListener;
                    if (anonymousClass1 != null && (displayLifecycle = sBluetoothTile.mDisplayLifecycle) != null) {
                        displayLifecycle.removeObserver(anonymousClass1);
                    }
                }
            });
        } catch (Exception e) {
            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("destroy exception:", Log.getStackTraceString(e), "SBluetoothTile");
        }
        if (QpRune.QUICK_PANEL_SUBSCREEN && (subscreenBluetoothTileReceiver = this.mSubscreenBlueotoothTileReceiver) != null && (broadcastDispatcher = this.mBroadcastDispatcher) != null) {
            broadcastDispatcher.unregisterReceiver(subscreenBluetoothTileReceiver);
            this.mSubscreenBlueotoothTileReceiver = null;
        }
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleSecondaryClick(View view) {
        handleSecondaryClick(Boolean.FALSE);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ec  */
    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleUpdateState(com.android.systemui.plugins.qs.QSTile.State r17, java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 663
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.qs.tiles.SBluetoothTile.handleUpdateState(com.android.systemui.plugins.qs.QSTile$State, java.lang.Object):void");
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl, com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final boolean isAvailable() {
        boolean z;
        if (((SBluetoothControllerImpl) this.mController).mLocalBluetoothManager != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (!this.mHost.shouldBeHiddenByKnox(this.mTileSpec)) {
                return true;
            }
        }
        return false;
    }

    public final boolean isBlockedByEASPolicy() {
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) this.mContext.getApplicationContext().getSystemService("device_policy");
        if (devicePolicyManager != null && devicePolicyManager.semGetAllowBluetoothMode(null) == 0) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final QSTile.State newTileState() {
        return new QSTile.BooleanState();
    }

    public final void onToggleStateChange(boolean z) {
        if (((SBluetoothControllerImpl) this.mController).mState != 11) {
            fireToggleStateChanged(z);
        } else {
            ((SQSTileImpl) this).mHandler.postDelayed(new SBluetoothTile$$ExternalSyntheticLambda0(this, 0), 500L);
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public final void setDetailListening(boolean z) {
        boolean z2;
        int i;
        if (this.mDetailListening == z) {
            return;
        }
        this.mDetailListening = z;
        LocalBluetoothManager localBluetoothManager = ((SBluetoothControllerImpl) this.mController).mLocalBluetoothManager;
        if (localBluetoothManager != null) {
            synchronized (localBluetoothManager) {
                Log.d("LocalBluetoothManager", "QP setForegroundActivity :: isForeground = " + z);
                ContentResolver contentResolver = localBluetoothManager.mContext.getContentResolver();
                if (z) {
                    i = 1;
                } else {
                    i = 0;
                }
                Settings.Secure.putIntForUser(contentResolver, "bluetooth_settings_foreground_qp", i, -2);
            }
        }
        SBluetoothController sBluetoothController = this.mController;
        if (((SBluetoothControllerImpl) sBluetoothController).mState == 12) {
            if (this.mDetailListening) {
                SBluetoothControllerImpl sBluetoothControllerImpl = (SBluetoothControllerImpl) sBluetoothController;
                sBluetoothControllerImpl.getClass();
                Log.d("SBluetoothControllerImpl", " updateListDevices ");
                LocalBluetoothManager localBluetoothManager2 = sBluetoothControllerImpl.mLocalBluetoothManager;
                if (localBluetoothManager2 != null) {
                    sBluetoothControllerImpl.stopScan();
                    localBluetoothManager2.mCachedDeviceManager.clearNonBondedDevices();
                    localBluetoothManager2.mEventManager.readRestoredDevices();
                }
                ((SBluetoothControllerImpl) this.mController).setScanMode(23);
                ((SBluetoothControllerImpl) this.mController).scan(true);
                if (QpRune.QUICK_BLUETOOTH_MUSIC_SHARE) {
                    ((SBluetoothControllerImpl) this.mController).scanMusicShareDevices(true, this.mDetailListening);
                }
            } else {
                ((SBluetoothControllerImpl) sBluetoothController).setScanMode(21);
                if (this.mDoStopScan) {
                    LocalBluetoothManager localBluetoothManager3 = ((SBluetoothControllerImpl) this.mController).mLocalBluetoothManager;
                    if (localBluetoothManager3 != null) {
                        z2 = localBluetoothManager3.semIsForegroundActivity();
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        ((SBluetoothControllerImpl) this.mController).scan(false);
                        if (QpRune.QUICK_BLUETOOTH_MUSIC_SHARE) {
                            ((SBluetoothControllerImpl) this.mController).scanMusicShareDevices(false, this.mDetailListening);
                        }
                    }
                }
            }
        } else {
            fireScanStateChanged(false);
        }
        this.mDoStopScan = true;
    }

    @Override // com.android.systemui.qs.tileimpl.SQSTileImpl
    public final boolean shouldAnnouncementBeDelayed() {
        if (this.mStateBeforeClick.value == ((QSTile.BooleanState) this.mState).value) {
            return true;
        }
        return false;
    }

    public final void handleSecondaryClick(Boolean bool) {
        boolean z = ((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing;
        ActivityStarter activityStarter = this.mActivityStarter;
        if (z) {
            KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
            if (keyguardUpdateMonitor.isSecure() && !keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser()) && this.mSettingsHelper.isLockFunctionsEnabled()) {
                activityStarter.postQSRunnableDismissingKeyguard(new SBluetoothTile$$ExternalSyntheticLambda0(this, 1));
                return;
            }
        }
        if (!((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isBluetoothTileBlocked() && !isBlockedByEASPolicy()) {
            if (!((SBluetoothControllerImpl) this.mController).canConfigBluetooth()) {
                activityStarter.postStartActivityDismissingKeyguard(new Intent("android.settings.BLUETOOTH_SETTINGS"), 0);
                return;
            } else if (bool.booleanValue()) {
                ((CentralSurfacesImpl) ((CentralSurfaces) Dependency.get(CentralSurfaces.class))).openQSPanelWithDetail("Bluetooth");
                return;
            } else {
                showDetail(true);
                return;
            }
        }
        showItPolicyToast();
    }
}
