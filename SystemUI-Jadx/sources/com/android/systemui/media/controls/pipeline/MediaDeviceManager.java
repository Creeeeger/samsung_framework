package com.android.systemui.media.controls.pipeline;

import android.bluetooth.BluetoothLeBroadcast;
import android.bluetooth.BluetoothLeBroadcastMetadata;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Drawable;
import android.media.MediaRouter2Manager;
import android.media.RoutingSessionInfo;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.os.UserHandle;
import android.util.Log;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.SuggestionsAdapter$$ExternalSyntheticOutline0;
import com.android.keyguard.FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;
import com.android.settingslib.bluetooth.LocalBluetoothManager;
import com.android.settingslib.media.InfoMediaManager;
import com.android.settingslib.media.LocalMediaManager;
import com.android.settingslib.media.MediaDevice;
import com.android.systemui.Dumpable;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.media.controls.models.player.MediaData;
import com.android.systemui.media.controls.models.player.MediaDeviceData;
import com.android.systemui.media.controls.models.recommendation.SmartspaceMediaData;
import com.android.systemui.media.controls.pipeline.MediaDataManager;
import com.android.systemui.media.controls.pipeline.MediaDeviceManager;
import com.android.systemui.media.controls.util.MediaControllerFactory;
import com.android.systemui.media.controls.util.MediaFlags;
import com.android.systemui.media.muteawait.MediaMuteAwaitConnectionManager;
import com.android.systemui.media.muteawait.MediaMuteAwaitConnectionManagerFactory;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.function.BiConsumer;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaDeviceManager implements MediaDataManager.Listener, Dumpable {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Executor bgExecutor;
    public final ConfigurationController configurationController;
    public final Context context;
    public final MediaControllerFactory controllerFactory;
    public final Map entries;
    public final Executor fgExecutor;
    public final Set listeners;
    public final LocalBluetoothManager localBluetoothManager;
    public final LocalMediaManagerFactory localMediaManagerFactory;
    public final MediaRouter2Manager mr2manager;
    public final MediaMuteAwaitConnectionManagerFactory muteAwaitConnectionManagerFactory;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public MediaDeviceManager(Context context, MediaControllerFactory mediaControllerFactory, LocalMediaManagerFactory localMediaManagerFactory, MediaRouter2Manager mediaRouter2Manager, MediaMuteAwaitConnectionManagerFactory mediaMuteAwaitConnectionManagerFactory, ConfigurationController configurationController, LocalBluetoothManager localBluetoothManager, Executor executor, Executor executor2, DumpManager dumpManager, BroadcastDispatcher broadcastDispatcher) {
        this.context = context;
        this.controllerFactory = mediaControllerFactory;
        this.localMediaManagerFactory = localMediaManagerFactory;
        this.mr2manager = mediaRouter2Manager;
        this.muteAwaitConnectionManagerFactory = mediaMuteAwaitConnectionManagerFactory;
        this.configurationController = configurationController;
        this.localBluetoothManager = localBluetoothManager;
        this.fgExecutor = executor;
        this.bgExecutor = executor2;
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.android.systemui.media.controls.pipeline.MediaDeviceManager$intentReceiver$1
            public final LocalMediaManager localMediaManager;

            {
                LocalMediaManagerFactory localMediaManagerFactory2 = MediaDeviceManager.this.localMediaManagerFactory;
                localMediaManagerFactory2.getClass();
                Context context2 = localMediaManagerFactory2.context;
                LocalBluetoothManager localBluetoothManager2 = localMediaManagerFactory2.localBluetoothManager;
                this.localMediaManager = new LocalMediaManager(context2, localBluetoothManager2, new InfoMediaManager(context2, "", null, localBluetoothManager2), "");
            }

            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (action != null) {
                    int hashCode = action.hashCode();
                    if (hashCode != -1315844839) {
                        if (hashCode != -414878142) {
                            if (hashCode == 23666178 && action.equals("com.samsung.android.mdx.quickboard.action.ACTION_MEDIA_ROUTER_SCAN_START")) {
                                Log.d("MediaDeviceManager", "ACTION_MEDIA_ROUTER_SCAN_START");
                                this.localMediaManager.startScan();
                                return;
                            }
                            return;
                        }
                        if (action.equals("com.samsung.android.mdx.quickboard.action.ACTION_MEDIA_ROUTER_SCAN_STOP")) {
                            Log.d("MediaDeviceManager", "ACTION_MEDIA_ROUTER_SCAN_STOP");
                            this.localMediaManager.stopScan();
                            return;
                        }
                        return;
                    }
                    if (action.equals("android.media.STREAM_DEVICES_CHANGED_ACTION") && intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) == 3) {
                        Log.d("MediaDeviceManager", "SEM_STREAM_DEVICES_CHANGED_ACTION");
                        MediaDeviceManager mediaDeviceManager = MediaDeviceManager.this;
                        synchronized (mediaDeviceManager.entries) {
                            ((LinkedHashMap) mediaDeviceManager.entries).forEach(new BiConsumer() { // from class: com.android.systemui.media.controls.pipeline.MediaDeviceManager$intentReceiver$1$onReceive$1$1
                                @Override // java.util.function.BiConsumer
                                public final void accept(Object obj, Object obj2) {
                                    MediaDeviceManager.Entry entry = (MediaDeviceManager.Entry) obj2;
                                    entry.stop();
                                    MediaDeviceManager mediaDeviceManager2 = MediaDeviceManager.this;
                                    mediaDeviceManager2.bgExecutor.execute(new MediaDeviceManager$Entry$start$1(entry, mediaDeviceManager2));
                                }
                            });
                            Unit unit = Unit.INSTANCE;
                        }
                    }
                }
            }
        };
        this.listeners = new LinkedHashSet();
        this.entries = new LinkedHashMap();
        DumpManager.registerDumpable$default(dumpManager, MediaDeviceManager.class.getName(), this);
        IntentFilter intentFilter = new IntentFilter("android.media.STREAM_DEVICES_CHANGED_ACTION");
        intentFilter.addAction("com.samsung.android.mdx.quickboard.action.ACTION_MEDIA_ROUTER_SCAN_START");
        intentFilter.addAction("com.samsung.android.mdx.quickboard.action.ACTION_MEDIA_ROUTER_SCAN_STOP");
        BroadcastDispatcher.registerReceiver$default(broadcastDispatcher, broadcastReceiver, intentFilter, null, UserHandle.ALL, 0, null, 48);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        RoutingSessionInfo routingSessionInfo;
        List list;
        CharSequence charSequence;
        Integer num;
        MediaController.PlaybackInfo playbackInfo;
        MediaController.PlaybackInfo playbackInfo2;
        printWriter.println("MediaDeviceManager state:");
        for (Map.Entry entry : ((LinkedHashMap) this.entries).entrySet()) {
            String str = (String) entry.getKey();
            Entry entry2 = (Entry) entry.getValue();
            FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0.m("  key=", str, printWriter);
            MediaController mediaController = entry2.controller;
            String str2 = null;
            if (mediaController != null) {
                routingSessionInfo = MediaDeviceManager.this.mr2manager.getRoutingSessionForMediaController(mediaController);
            } else {
                routingSessionInfo = null;
            }
            if (routingSessionInfo != null) {
                list = MediaDeviceManager.this.mr2manager.getSelectedRoutes(routingSessionInfo);
            } else {
                list = null;
            }
            MediaDeviceData mediaDeviceData = entry2.current;
            if (mediaDeviceData != null) {
                charSequence = mediaDeviceData.name;
            } else {
                charSequence = null;
            }
            printWriter.println("    current device is " + ((Object) charSequence));
            MediaController mediaController2 = entry2.controller;
            if (mediaController2 != null && (playbackInfo2 = mediaController2.getPlaybackInfo()) != null) {
                num = Integer.valueOf(playbackInfo2.getPlaybackType());
            } else {
                num = null;
            }
            printWriter.println("    PlaybackType=" + num + " (1 for local, 2 for remote) cached=" + entry2.playbackType);
            MediaController mediaController3 = entry2.controller;
            if (mediaController3 != null && (playbackInfo = mediaController3.getPlaybackInfo()) != null) {
                str2 = playbackInfo.getVolumeControlId();
            }
            printWriter.println("    volumeControlId=" + str2 + " cached= " + entry2.playbackVolumeControlId);
            StringBuilder sb = new StringBuilder("    routingSession=");
            sb.append(routingSessionInfo);
            printWriter.println(sb.toString());
            printWriter.println("    selectedRoutes=" + list);
        }
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onMediaDataLoaded(String str, String str2, MediaData mediaData, boolean z, int i, boolean z2) {
        MediaController mediaController;
        LocalMediaManager localMediaManager;
        MediaMuteAwaitConnectionManager mediaMuteAwaitConnectionManager;
        MediaSession.Token token;
        Entry entry;
        Map map = this.entries;
        if (str2 != null && !Intrinsics.areEqual(str2, str) && (entry = (Entry) map.remove(str2)) != null) {
            entry.stop();
        }
        Entry entry2 = (Entry) ((LinkedHashMap) map).get(str);
        MediaSession.Token token2 = mediaData.token;
        if (entry2 != null) {
            MediaController mediaController2 = entry2.controller;
            if (mediaController2 != null) {
                token = mediaController2.getSessionToken();
            } else {
                token = null;
            }
            if (Intrinsics.areEqual(token, token2)) {
                return;
            }
        }
        if (entry2 != null) {
            entry2.stop();
        }
        MediaDeviceData mediaDeviceData = mediaData.device;
        if (mediaDeviceData != null) {
            processDevice(str, str2, mediaDeviceData);
            return;
        }
        if (token2 != null) {
            MediaControllerFactory mediaControllerFactory = this.controllerFactory;
            mediaControllerFactory.getClass();
            mediaController = new MediaController(mediaControllerFactory.mContext, token2);
        } else {
            mediaController = null;
        }
        LocalMediaManagerFactory localMediaManagerFactory = this.localMediaManagerFactory;
        localMediaManagerFactory.getClass();
        Context context = localMediaManagerFactory.context;
        String str3 = mediaData.packageName;
        LocalBluetoothManager localBluetoothManager = localMediaManagerFactory.localBluetoothManager;
        LocalMediaManager localMediaManager2 = new LocalMediaManager(context, localBluetoothManager, new InfoMediaManager(context, str3, null, localBluetoothManager), str3);
        MediaMuteAwaitConnectionManagerFactory mediaMuteAwaitConnectionManagerFactory = this.muteAwaitConnectionManagerFactory;
        MediaFlags mediaFlags = mediaMuteAwaitConnectionManagerFactory.mediaFlags;
        mediaFlags.getClass();
        Flags.INSTANCE.getClass();
        if (!((FeatureFlagsRelease) mediaFlags.featureFlags).isEnabled(Flags.MEDIA_MUTE_AWAIT)) {
            mediaMuteAwaitConnectionManager = null;
            localMediaManager = localMediaManager2;
        } else {
            localMediaManager = localMediaManager2;
            mediaMuteAwaitConnectionManager = new MediaMuteAwaitConnectionManager(mediaMuteAwaitConnectionManagerFactory.mainExecutor, localMediaManager2, mediaMuteAwaitConnectionManagerFactory.context, mediaMuteAwaitConnectionManagerFactory.deviceIconUtil, mediaMuteAwaitConnectionManagerFactory.logger);
        }
        Entry entry3 = new Entry(str, str2, mediaController, localMediaManager, mediaMuteAwaitConnectionManager);
        map.put(str, entry3);
        MediaDeviceManager mediaDeviceManager = MediaDeviceManager.this;
        mediaDeviceManager.bgExecutor.execute(new MediaDeviceManager$Entry$start$1(entry3, mediaDeviceManager));
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onMediaDataRemoved(String str) {
        Entry entry = (Entry) this.entries.remove(str);
        if (entry != null) {
            entry.stop();
        }
        if (entry != null) {
            Iterator it = this.listeners.iterator();
            while (it.hasNext()) {
                ((MediaDataCombineLatest) it.next()).remove(str);
            }
        }
    }

    public final void processDevice(String str, String str2, MediaDeviceData mediaDeviceData) {
        for (MediaDataCombineLatest mediaDataCombineLatest : this.listeners) {
            Map map = mediaDataCombineLatest.entries;
            MediaData mediaData = null;
            if (str2 != null && !Intrinsics.areEqual(str2, str) && map.containsKey(str2)) {
                Pair pair = (Pair) map.remove(str2);
                if (pair != null) {
                    mediaData = (MediaData) pair.getFirst();
                }
                map.put(str, new Pair(mediaData, mediaDeviceData));
                mediaDataCombineLatest.update(str, str2);
            } else {
                Pair pair2 = (Pair) ((LinkedHashMap) map).get(str);
                if (pair2 != null) {
                    mediaData = (MediaData) pair2.getFirst();
                }
                map.put(str, new Pair(mediaData, mediaDeviceData));
                mediaDataCombineLatest.update(str, str);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Entry extends MediaController.Callback implements LocalMediaManager.DeviceCallback, BluetoothLeBroadcast.Callback {
        public static final /* synthetic */ int $r8$clinit = 0;
        public AboutToConnectDevice aboutToConnectDeviceOverride;
        public String broadcastDescription;
        public final MediaDeviceManager$Entry$configListener$1 configListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.systemui.media.controls.pipeline.MediaDeviceManager$Entry$configListener$1
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onLocaleListChanged() {
                int i = MediaDeviceManager.Entry.$r8$clinit;
                MediaDeviceManager.Entry.this.updateCurrent();
            }
        };
        public final MediaController controller;
        public MediaDeviceData current;
        public final String key;
        public final LocalMediaManager localMediaManager;
        public final MediaMuteAwaitConnectionManager muteAwaitConnectionManager;
        public final String oldKey;
        public int playbackType;
        public String playbackVolumeControlId;
        public boolean started;

        /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.media.controls.pipeline.MediaDeviceManager$Entry$configListener$1] */
        public Entry(String str, String str2, MediaController mediaController, LocalMediaManager localMediaManager, MediaMuteAwaitConnectionManager mediaMuteAwaitConnectionManager) {
            this.key = str;
            this.oldKey = str2;
            this.controller = mediaController;
            this.localMediaManager = localMediaManager;
            this.muteAwaitConnectionManager = mediaMuteAwaitConnectionManager;
        }

        @Override // com.android.settingslib.media.LocalMediaManager.DeviceCallback
        public final void onAboutToConnectDeviceAdded(String str, Drawable drawable, String str2) {
            Integer num;
            MediaDevice mediaDeviceById = this.localMediaManager.getMediaDeviceById(str);
            MediaDeviceData mediaDeviceData = new MediaDeviceData(true, drawable, str2, null, null, false, null, 88, null);
            MediaDevice mediaDeviceById2 = this.localMediaManager.getMediaDeviceById(str);
            if (mediaDeviceById2 != null) {
                num = Integer.valueOf(mediaDeviceById2.getDeviceType());
            } else {
                num = null;
            }
            mediaDeviceData.customMediaDeviceData.deviceType = num;
            Unit unit = Unit.INSTANCE;
            AboutToConnectDevice aboutToConnectDevice = new AboutToConnectDevice(mediaDeviceById, mediaDeviceData);
            this.aboutToConnectDeviceOverride = aboutToConnectDevice;
            Log.d("MediaDeviceManager", "onAboutToConnectDeviceAdded backupMediaDeviceData=" + aboutToConnectDevice.backupMediaDeviceData);
            updateCurrent();
        }

        @Override // com.android.settingslib.media.LocalMediaManager.DeviceCallback
        public final void onAboutToConnectDeviceRemoved() {
            Log.d("MediaDeviceManager", "onAboutToConnectDeviceRemoved");
            this.aboutToConnectDeviceOverride = null;
            updateCurrent();
        }

        @Override // android.media.session.MediaController.Callback
        public final void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
            int i;
            String str;
            if (playbackInfo != null) {
                i = playbackInfo.getPlaybackType();
            } else {
                i = 0;
            }
            if (playbackInfo != null) {
                str = playbackInfo.getVolumeControlId();
            } else {
                str = null;
            }
            if (i == this.playbackType && Intrinsics.areEqual(str, this.playbackVolumeControlId)) {
                return;
            }
            this.playbackType = i;
            this.playbackVolumeControlId = str;
            updateCurrent();
        }

        public final void onBroadcastMetadataChanged(int i, BluetoothLeBroadcastMetadata bluetoothLeBroadcastMetadata) {
            Log.d("MediaDeviceManager", "onBroadcastMetadataChanged(), broadcastId = " + i + " , metadata = " + bluetoothLeBroadcastMetadata);
            updateCurrent();
        }

        public final void onBroadcastStartFailed(int i) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("onBroadcastStartFailed(), reason = ", i, "MediaDeviceManager");
        }

        public final void onBroadcastStarted(int i, int i2) {
            Log.d("MediaDeviceManager", "onBroadcastStarted(), reason = " + i + " , broadcastId = " + i2);
            updateCurrent();
        }

        public final void onBroadcastStopFailed(int i) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("onBroadcastStopFailed(), reason = ", i, "MediaDeviceManager");
        }

        public final void onBroadcastStopped(int i, int i2) {
            Log.d("MediaDeviceManager", "onBroadcastStopped(), reason = " + i + " , broadcastId = " + i2);
            updateCurrent();
        }

        public final void onBroadcastUpdateFailed(int i, int i2) {
            SuggestionsAdapter$$ExternalSyntheticOutline0.m("onBroadcastUpdateFailed(), reason = ", i, " , broadcastId = ", i2, "MediaDeviceManager");
        }

        public final void onBroadcastUpdated(int i, int i2) {
            Log.d("MediaDeviceManager", "onBroadcastUpdated(), reason = " + i + " , broadcastId = " + i2);
            updateCurrent();
        }

        @Override // com.android.settingslib.media.LocalMediaManager.DeviceCallback
        public final void onDeviceListUpdate(List list) {
            MediaDeviceManager.this.bgExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaDeviceManager$Entry$onDeviceListUpdate$1
                @Override // java.lang.Runnable
                public final void run() {
                    Log.d("MediaDeviceManager", "onDeviceListUpdate()");
                    MediaDeviceManager.Entry entry = MediaDeviceManager.Entry.this;
                    int i = MediaDeviceManager.Entry.$r8$clinit;
                    entry.updateCurrent();
                }
            });
        }

        @Override // com.android.settingslib.media.LocalMediaManager.DeviceCallback
        public final void onSelectedDeviceStateChanged(MediaDevice mediaDevice) {
            MediaDeviceManager.this.bgExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaDeviceManager$Entry$onSelectedDeviceStateChanged$1
                @Override // java.lang.Runnable
                public final void run() {
                    Log.d("MediaDeviceManager", "onSelectedDeviceStateChanged()");
                    MediaDeviceManager.Entry entry = MediaDeviceManager.Entry.this;
                    int i = MediaDeviceManager.Entry.$r8$clinit;
                    entry.updateCurrent();
                }
            });
        }

        public final void setCurrent(final MediaDeviceData mediaDeviceData) {
            boolean z;
            boolean z2 = false;
            if (mediaDeviceData != null) {
                MediaDeviceData mediaDeviceData2 = this.current;
                if (mediaDeviceData2 != null && mediaDeviceData.enabled == mediaDeviceData2.enabled && Intrinsics.areEqual(mediaDeviceData.name, mediaDeviceData2.name) && Intrinsics.areEqual(mediaDeviceData.intent, mediaDeviceData2.intent) && Intrinsics.areEqual(mediaDeviceData.id, mediaDeviceData2.id) && mediaDeviceData.showBroadcastButton == mediaDeviceData2.showBroadcastButton) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    z2 = true;
                }
            }
            if (!this.started || !z2) {
                this.current = mediaDeviceData;
                final MediaDeviceManager mediaDeviceManager = MediaDeviceManager.this;
                mediaDeviceManager.fgExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaDeviceManager$Entry$current$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaDeviceManager mediaDeviceManager2 = MediaDeviceManager.this;
                        MediaDeviceManager.Entry entry = this;
                        String str = entry.key;
                        String str2 = entry.oldKey;
                        MediaDeviceData mediaDeviceData3 = mediaDeviceData;
                        int i = MediaDeviceManager.$r8$clinit;
                        mediaDeviceManager2.processDevice(str, str2, mediaDeviceData3);
                    }
                });
            }
        }

        public final void stop() {
            final MediaDeviceManager mediaDeviceManager = MediaDeviceManager.this;
            mediaDeviceManager.bgExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaDeviceManager$Entry$stop$1
                @Override // java.lang.Runnable
                public final void run() {
                    if (MediaDeviceManager.Entry.this.started) {
                        Log.d("MediaDeviceManager", "stopScan()");
                        MediaDeviceManager.Entry entry = MediaDeviceManager.Entry.this;
                        entry.started = false;
                        MediaController mediaController = entry.controller;
                        if (mediaController != null) {
                            mediaController.unregisterCallback(entry);
                        }
                        MediaDeviceManager.Entry.this.localMediaManager.stopScan();
                        MediaDeviceManager.Entry entry2 = MediaDeviceManager.Entry.this;
                        ((CopyOnWriteArrayList) entry2.localMediaManager.mCallbacks).remove(entry2);
                        MediaMuteAwaitConnectionManager mediaMuteAwaitConnectionManager = MediaDeviceManager.Entry.this.muteAwaitConnectionManager;
                        if (mediaMuteAwaitConnectionManager != null) {
                            mediaMuteAwaitConnectionManager.audioManager.unregisterMuteAwaitConnectionCallback(mediaMuteAwaitConnectionManager.muteAwaitConnectionChangeListener);
                        }
                        ((ConfigurationControllerImpl) mediaDeviceManager.configurationController).removeCallback(MediaDeviceManager.Entry.this.configListener);
                    }
                }
            });
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0072  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0092  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00f4  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0130  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x013a  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x014d  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0140  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0136  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x00f9  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00ef  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void updateCurrent() {
            /*
                Method dump skipped, instructions count: 349
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.controls.pipeline.MediaDeviceManager.Entry.updateCurrent():void");
        }

        public final void onPlaybackStarted(int i, int i2) {
        }

        public final void onPlaybackStopped(int i, int i2) {
        }
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onSmartspaceMediaDataLoaded(String str, SmartspaceMediaData smartspaceMediaData) {
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onSmartspaceMediaDataRemoved(String str, boolean z) {
    }
}
