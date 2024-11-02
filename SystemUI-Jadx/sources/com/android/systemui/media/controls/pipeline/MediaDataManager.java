package com.android.systemui.media.controls.pipeline;

import android.R;
import android.app.BroadcastOptions;
import android.app.PendingIntent;
import android.app.StatusBarManager;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceConfig;
import android.app.smartspace.SmartspaceManager;
import android.app.smartspace.SmartspaceSession;
import android.app.smartspace.SmartspaceTarget;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.Bundle;
import android.os.Trace;
import android.os.UserHandle;
import android.provider.Settings;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.internal.logging.InstanceId;
import com.android.keyguard.ActiveUnlockConfig$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dumpable;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.Flags;
import com.android.systemui.media.controls.models.player.MediaAction;
import com.android.systemui.media.controls.models.player.MediaButton;
import com.android.systemui.media.controls.models.player.MediaData;
import com.android.systemui.media.controls.models.player.MediaViewHolder;
import com.android.systemui.media.controls.models.recommendation.SmartspaceMediaData;
import com.android.systemui.media.controls.models.recommendation.SmartspaceMediaDataProvider;
import com.android.systemui.media.controls.pipeline.MediaDataManager;
import com.android.systemui.media.controls.resume.MediaResumeListener;
import com.android.systemui.media.controls.util.MediaControllerFactory;
import com.android.systemui.media.controls.util.MediaFlags;
import com.android.systemui.media.controls.util.MediaUiEvent;
import com.android.systemui.media.controls.util.MediaUiEventLogger;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.android.systemui.statusbar.NotificationMediaManager;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.Assert;
import com.android.systemui.util.Utils;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.time.SystemClock;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.sec.ims.volte2.data.VolteConstants;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt___MapsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.sequences.TransformingSequence;
import kotlin.sequences.TransformingSequence$iterator$1;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaDataManager implements Dumpable, BcSmartspaceDataPlugin.SmartspaceTargetListener {
    public static final String EXTRAS_MEDIA_SOURCE_PACKAGE_NAME;
    public static final int MAX_COMPACT_ACTIONS;
    public static final int MAX_NOTIFICATION_ACTIONS;
    public static final String SMARTSPACE_UI_SURFACE_LABEL;
    public final ActivityStarter activityStarter;
    public boolean allowMediaRecommendations;
    public final int artworkHeight;
    public final int artworkWidth;
    public final Executor backgroundExecutor;
    public final Context context;
    public final DelayableExecutor foregroundExecutor;
    public final Set internalListeners;
    public final MediaUiEventLogger logger;
    public final MediaControllerFactory mediaControllerFactory;
    public final MediaDataFilter mediaDataFilter;
    public final LinkedHashMap mediaEntries;
    public final MediaFlags mediaFlags;
    public SmartspaceMediaData smartspaceMediaData;
    public final SmartspaceMediaDataProvider smartspaceMediaDataProvider;
    private SmartspaceSession smartspaceSession;
    public final StatusBarManager statusBarManager;
    public final SystemClock systemClock;
    public final int themeText;
    public final Executor uiExecutor;
    public boolean useMediaResumption;
    public final boolean useQsMediaPlayer;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.media.controls.pipeline.MediaDataManager$1 */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends Lambda implements Function2 {
        public AnonymousClass1() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            String str = (String) obj;
            boolean booleanValue = ((Boolean) obj2).booleanValue();
            MediaDataManager mediaDataManager = MediaDataManager.this;
            String str2 = MediaDataManager.SMARTSPACE_UI_SURFACE_LABEL;
            MediaData mediaData = (MediaData) mediaDataManager.mediaEntries.get(str);
            if (mediaData != null) {
                if (booleanValue) {
                    mediaDataManager.logger.logger.logWithInstanceId(MediaUiEvent.MEDIA_TIMEOUT, mediaData.appUid, mediaData.packageName, mediaData.instanceId);
                }
                boolean z = !booleanValue;
                if (mediaData.active == z) {
                    if (mediaData.resumption) {
                        Log.d("MediaDataManager", "timing out resume player ".concat(str));
                        mediaDataManager.dismissMediaData(str, false);
                    }
                    return Unit.INSTANCE;
                }
                mediaData.active = z;
                Log.d("MediaDataManager", "Updating " + str + " timedOut: " + booleanValue);
                mediaDataManager.onMediaDataLoaded(str, str, mediaData);
            }
            if (Intrinsics.areEqual(str, mediaDataManager.smartspaceMediaData.targetId)) {
                Log.d("MediaDataManager", "smartspace card expired");
                mediaDataManager.dismissSmartspaceRecommendation(str);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.media.controls.pipeline.MediaDataManager$2 */
    /* loaded from: classes.dex */
    public static final class AnonymousClass2 extends Lambda implements Function2 {
        public AnonymousClass2() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            MediaData copy$default;
            String str = (String) obj;
            PlaybackState playbackState = (PlaybackState) obj2;
            MediaDataManager mediaDataManager = MediaDataManager.this;
            MediaData mediaData = (MediaData) mediaDataManager.mediaEntries.get(str);
            if (mediaData != null) {
                MediaSession.Token token = mediaData.token;
                if (token == null) {
                    Log.d("MediaDataManager", "State updated, but token was null");
                } else {
                    MediaControllerFactory mediaControllerFactory = mediaDataManager.mediaControllerFactory;
                    mediaControllerFactory.getClass();
                    MediaButton createActionsFromState = mediaDataManager.createActionsFromState(mediaData.packageName, new MediaController(mediaControllerFactory.mContext, token), new UserHandle(mediaData.userId));
                    if (createActionsFromState != null) {
                        EmptyList emptyList = EmptyList.INSTANCE;
                        Pair generateActionsFromSemantic = MediaDataManager.generateActionsFromSemantic(createActionsFromState);
                        copy$default = MediaData.copy$default(mediaData, (List) generateActionsFromSemantic.getFirst(), (List) generateActionsFromSemantic.getSecond(), createActionsFromState, null, null, null, false, null, false, false, Boolean.valueOf(NotificationMediaManager.isPlayingState(playbackState.getState())), false, null, 0, 267385983);
                    } else {
                        copy$default = MediaData.copy$default(mediaData, null, null, null, null, null, null, false, null, false, false, Boolean.valueOf(NotificationMediaManager.isPlayingState(playbackState.getState())), false, null, 0, 267386879);
                    }
                    Log.d("MediaDataManager", "State updated outside of notification");
                    mediaDataManager.onMediaDataLoaded(str, str, copy$default);
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.media.controls.pipeline.MediaDataManager$3 */
    /* loaded from: classes.dex */
    public static final class AnonymousClass3 extends Lambda implements Function1 {
        public AnonymousClass3() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            MediaFlags mediaFlags = MediaDataManager.this.mediaFlags;
            mediaFlags.getClass();
            Flags.INSTANCE.getClass();
            mediaFlags.featureFlags.getClass();
            return Unit.INSTANCE;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.media.controls.pipeline.MediaDataManager$6 */
    /* loaded from: classes.dex */
    public final class AnonymousClass6 implements TunerService.Tunable {
        public AnonymousClass6() {
        }

        @Override // com.android.systemui.tuner.TunerService.Tunable
        public final void onTuningChanged(String str, String str2) {
            MediaDataManager mediaDataManager = MediaDataManager.this;
            Context context = mediaDataManager.context;
            String[] strArr = MediaDataManagerKt.ART_URIS;
            boolean z = true;
            int i = Settings.Secure.getInt(context.getContentResolver(), "qs_media_recommend", 1);
            if (!Utils.useQsMediaPlayer(context) || i <= 0) {
                z = false;
            }
            mediaDataManager.allowMediaRecommendations = z;
            if (!z) {
                mediaDataManager.dismissSmartspaceRecommendation(mediaDataManager.smartspaceMediaData.targetId);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Listener {

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public abstract class DefaultImpls {
            public static /* synthetic */ void onMediaDataLoaded$default(Listener listener, String str, String str2, MediaData mediaData, boolean z, int i, boolean z2, int i2) {
                int i3;
                boolean z3;
                if ((i2 & 8) != 0) {
                    z = true;
                }
                boolean z4 = z;
                if ((i2 & 16) != 0) {
                    i3 = 0;
                } else {
                    i3 = i;
                }
                if ((i2 & 32) != 0) {
                    z3 = false;
                } else {
                    z3 = z2;
                }
                listener.onMediaDataLoaded(str, str2, mediaData, z4, i3, z3);
            }
        }

        void onMediaDataLoaded(String str, String str2, MediaData mediaData, boolean z, int i, boolean z2);

        void onMediaDataRemoved(String str);

        void onSmartspaceMediaDataLoaded(String str, SmartspaceMediaData smartspaceMediaData);

        void onSmartspaceMediaDataRemoved(String str, boolean z);
    }

    static {
        new Companion(null);
        SMARTSPACE_UI_SURFACE_LABEL = BcSmartspaceDataPlugin.UI_SURFACE_MEDIA;
        EXTRAS_MEDIA_SOURCE_PACKAGE_NAME = "package_name";
        MAX_COMPACT_ACTIONS = 3;
        MediaViewHolder.Companion.getClass();
        MAX_NOTIFICATION_ACTIONS = MediaViewHolder.genericButtonIds.size();
    }

    public MediaDataManager(Context context, Executor executor, Executor executor2, DelayableExecutor delayableExecutor, MediaControllerFactory mediaControllerFactory, BroadcastDispatcher broadcastDispatcher, DumpManager dumpManager, MediaTimeoutListener mediaTimeoutListener, final MediaResumeListener mediaResumeListener, MediaSessionBasedFilter mediaSessionBasedFilter, MediaDeviceManager mediaDeviceManager, MediaDataCombineLatest mediaDataCombineLatest, MediaDataFilter mediaDataFilter, ActivityStarter activityStarter, SmartspaceMediaDataProvider smartspaceMediaDataProvider, boolean z, boolean z2, SystemClock systemClock, TunerService tunerService, MediaFlags mediaFlags, MediaUiEventLogger mediaUiEventLogger, SmartspaceManager smartspaceManager, KeyguardUpdateMonitor keyguardUpdateMonitor) {
        this.context = context;
        this.backgroundExecutor = executor;
        this.uiExecutor = executor2;
        this.foregroundExecutor = delayableExecutor;
        this.mediaControllerFactory = mediaControllerFactory;
        this.mediaDataFilter = mediaDataFilter;
        this.activityStarter = activityStarter;
        this.smartspaceMediaDataProvider = smartspaceMediaDataProvider;
        this.useMediaResumption = z;
        this.useQsMediaPlayer = z2;
        this.systemClock = systemClock;
        this.mediaFlags = mediaFlags;
        this.logger = mediaUiEventLogger;
        this.themeText = com.android.settingslib.Utils.getColorAttr(R.attr.textColorPrimary, context).getDefaultColor();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.internalListeners = linkedHashSet;
        this.mediaEntries = new LinkedHashMap();
        this.smartspaceMediaData = MediaDataManagerKt.EMPTY_SMARTSPACE_MEDIA_DATA;
        this.allowMediaRecommendations = Utils.useQsMediaPlayer(context) && Settings.Secure.getInt(context.getContentResolver(), "qs_media_recommend", 1) > 0;
        this.artworkWidth = context.getResources().getDimensionPixelSize(R.dimen.conversation_badge_side_margin);
        this.artworkHeight = context.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.qs_media_session_height_expanded);
        this.statusBarManager = (StatusBarManager) context.getSystemService("statusbar");
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$appChangeReceiver$1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                String[] stringArrayExtra;
                String encodedSchemeSpecificPart;
                String action = intent.getAction();
                if (action != null) {
                    int hashCode = action.hashCode();
                    if (hashCode != -1001645458) {
                        if (hashCode != -757780528) {
                            if (hashCode != 525384130 || !action.equals("android.intent.action.PACKAGE_REMOVED")) {
                                return;
                            }
                        } else if (!action.equals("android.intent.action.PACKAGE_RESTARTED")) {
                            return;
                        }
                        Uri data = intent.getData();
                        if (data != null && (encodedSchemeSpecificPart = data.getEncodedSchemeSpecificPart()) != null) {
                            MediaDataManager.access$removeAllForPackage(MediaDataManager.this, encodedSchemeSpecificPart);
                            return;
                        }
                        return;
                    }
                    if (action.equals("android.intent.action.PACKAGES_SUSPENDED") && (stringArrayExtra = intent.getStringArrayExtra("android.intent.extra.changed_package_list")) != null) {
                        MediaDataManager mediaDataManager = MediaDataManager.this;
                        for (String str : stringArrayExtra) {
                            MediaDataManager.access$removeAllForPackage(mediaDataManager, str);
                        }
                    }
                }
            }
        };
        DumpManager.registerDumpable$default(dumpManager, "MediaDataManager", this);
        linkedHashSet.add(mediaTimeoutListener);
        linkedHashSet.add(mediaSessionBasedFilter);
        mediaSessionBasedFilter.listeners.add(mediaDeviceManager);
        mediaSessionBasedFilter.listeners.add(mediaDataCombineLatest);
        mediaDeviceManager.listeners.add(mediaDataCombineLatest);
        mediaDataCombineLatest.listeners.add(mediaDataFilter);
        mediaTimeoutListener.timeoutCallback = new Function2() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager.1
            public AnonymousClass1() {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                String str = (String) obj;
                boolean booleanValue = ((Boolean) obj2).booleanValue();
                MediaDataManager mediaDataManager = MediaDataManager.this;
                String str2 = MediaDataManager.SMARTSPACE_UI_SURFACE_LABEL;
                MediaData mediaData = (MediaData) mediaDataManager.mediaEntries.get(str);
                if (mediaData != null) {
                    if (booleanValue) {
                        mediaDataManager.logger.logger.logWithInstanceId(MediaUiEvent.MEDIA_TIMEOUT, mediaData.appUid, mediaData.packageName, mediaData.instanceId);
                    }
                    boolean z3 = !booleanValue;
                    if (mediaData.active == z3) {
                        if (mediaData.resumption) {
                            Log.d("MediaDataManager", "timing out resume player ".concat(str));
                            mediaDataManager.dismissMediaData(str, false);
                        }
                        return Unit.INSTANCE;
                    }
                    mediaData.active = z3;
                    Log.d("MediaDataManager", "Updating " + str + " timedOut: " + booleanValue);
                    mediaDataManager.onMediaDataLoaded(str, str, mediaData);
                }
                if (Intrinsics.areEqual(str, mediaDataManager.smartspaceMediaData.targetId)) {
                    Log.d("MediaDataManager", "smartspace card expired");
                    mediaDataManager.dismissSmartspaceRecommendation(str);
                }
                return Unit.INSTANCE;
            }
        };
        mediaTimeoutListener.stateCallback = new Function2() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager.2
            public AnonymousClass2() {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                MediaData copy$default;
                String str = (String) obj;
                PlaybackState playbackState = (PlaybackState) obj2;
                MediaDataManager mediaDataManager = MediaDataManager.this;
                MediaData mediaData = (MediaData) mediaDataManager.mediaEntries.get(str);
                if (mediaData != null) {
                    MediaSession.Token token = mediaData.token;
                    if (token == null) {
                        Log.d("MediaDataManager", "State updated, but token was null");
                    } else {
                        MediaControllerFactory mediaControllerFactory2 = mediaDataManager.mediaControllerFactory;
                        mediaControllerFactory2.getClass();
                        MediaButton createActionsFromState = mediaDataManager.createActionsFromState(mediaData.packageName, new MediaController(mediaControllerFactory2.mContext, token), new UserHandle(mediaData.userId));
                        if (createActionsFromState != null) {
                            EmptyList emptyList = EmptyList.INSTANCE;
                            Pair generateActionsFromSemantic = MediaDataManager.generateActionsFromSemantic(createActionsFromState);
                            copy$default = MediaData.copy$default(mediaData, (List) generateActionsFromSemantic.getFirst(), (List) generateActionsFromSemantic.getSecond(), createActionsFromState, null, null, null, false, null, false, false, Boolean.valueOf(NotificationMediaManager.isPlayingState(playbackState.getState())), false, null, 0, 267385983);
                        } else {
                            copy$default = MediaData.copy$default(mediaData, null, null, null, null, null, null, false, null, false, false, Boolean.valueOf(NotificationMediaManager.isPlayingState(playbackState.getState())), false, null, 0, 267386879);
                        }
                        Log.d("MediaDataManager", "State updated outside of notification");
                        mediaDataManager.onMediaDataLoaded(str, str, copy$default);
                    }
                }
                return Unit.INSTANCE;
            }
        };
        mediaTimeoutListener.sessionCallback = new Function1() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager.3
            public AnonymousClass3() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                MediaFlags mediaFlags2 = MediaDataManager.this.mediaFlags;
                mediaFlags2.getClass();
                Flags.INSTANCE.getClass();
                mediaFlags2.featureFlags.getClass();
                return Unit.INSTANCE;
            }
        };
        mediaResumeListener.mediaDataManager = this;
        mediaResumeListener.tunerService.addTunable(new TunerService.Tunable() { // from class: com.android.systemui.media.controls.resume.MediaResumeListener$setManager$1
            @Override // com.android.systemui.tuner.TunerService.Tunable
            public final void onTuningChanged(String str, String str2) {
                MediaResumeListener mediaResumeListener2 = MediaResumeListener.this;
                mediaResumeListener2.useMediaResumption = Utils.useMediaResumption(mediaResumeListener2.context);
                MediaDataManager mediaDataManager = mediaResumeListener2.mediaDataManager;
                if (mediaDataManager == null) {
                    mediaDataManager = null;
                }
                boolean z3 = mediaResumeListener2.useMediaResumption;
                if (mediaDataManager.useMediaResumption != z3) {
                    mediaDataManager.useMediaResumption = z3;
                    if (!z3) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        LinkedHashMap linkedHashMap2 = mediaDataManager.mediaEntries;
                        for (Map.Entry entry : linkedHashMap2.entrySet()) {
                            if (!((MediaData) entry.getValue()).active) {
                                linkedHashMap.put(entry.getKey(), entry.getValue());
                            }
                        }
                        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                            linkedHashMap2.remove(entry2.getKey());
                            mediaDataManager.notifyMediaDataRemoved((String) entry2.getKey());
                            mediaDataManager.logger.logMediaRemoved(((MediaData) entry2.getValue()).appUid, ((MediaData) entry2.getValue()).packageName, ((MediaData) entry2.getValue()).instanceId);
                        }
                    }
                }
            }
        }, "qs_media_resumption");
        BroadcastDispatcher.registerReceiver$default(broadcastDispatcher, broadcastReceiver, new IntentFilter("android.intent.action.PACKAGES_SUSPENDED"), null, UserHandle.ALL, 0, null, 48);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_RESTARTED");
        intentFilter.addDataScheme("package");
        context.registerReceiver(broadcastReceiver, intentFilter);
        smartspaceMediaDataProvider.registerListener(this);
        SmartspaceSession createSmartspaceSession = smartspaceManager.createSmartspaceSession(new SmartspaceConfig.Builder(context, SMARTSPACE_UI_SURFACE_LABEL).build());
        this.smartspaceSession = createSmartspaceSession;
        if (createSmartspaceSession != null) {
            createSmartspaceSession.addOnTargetsAvailableListener(executor2, new SmartspaceSession.OnTargetsAvailableListener() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$4$1
                public final void onTargetsAvailable(List list) {
                    MediaDataManager.this.smartspaceMediaDataProvider.onTargetsAvailable(list);
                }
            });
        }
        SmartspaceSession smartspaceSession = this.smartspaceSession;
        if (smartspaceSession != null) {
            smartspaceSession.requestSmartspaceUpdate();
        }
        tunerService.addTunable(new TunerService.Tunable() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager.6
            public AnonymousClass6() {
            }

            @Override // com.android.systemui.tuner.TunerService.Tunable
            public final void onTuningChanged(String str, String str2) {
                MediaDataManager mediaDataManager = MediaDataManager.this;
                Context context2 = mediaDataManager.context;
                String[] strArr = MediaDataManagerKt.ART_URIS;
                boolean z3 = true;
                int i = Settings.Secure.getInt(context2.getContentResolver(), "qs_media_recommend", 1);
                if (!Utils.useQsMediaPlayer(context2) || i <= 0) {
                    z3 = false;
                }
                mediaDataManager.allowMediaRecommendations = z3;
                if (!z3) {
                    mediaDataManager.dismissSmartspaceRecommendation(mediaDataManager.smartspaceMediaData.targetId);
                }
            }
        }, "qs_media_recommend");
    }

    public static final void access$removeAllForPackage(MediaDataManager mediaDataManager, String str) {
        mediaDataManager.getClass();
        Assert.isMainThread();
        LinkedHashMap linkedHashMap = mediaDataManager.mediaEntries;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (Intrinsics.areEqual(((MediaData) entry.getValue()).packageName, str)) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it = linkedHashMap2.entrySet().iterator();
        while (it.hasNext()) {
            removeEntry$default(mediaDataManager, (String) ((Map.Entry) it.next()).getKey());
        }
    }

    public static final boolean access$sendPendingIntent(MediaDataManager mediaDataManager, PendingIntent pendingIntent) {
        mediaDataManager.getClass();
        try {
            BroadcastOptions makeBasic = BroadcastOptions.makeBasic();
            makeBasic.setInteractive(true);
            pendingIntent.send(makeBasic.toBundle());
            return true;
        } catch (PendingIntent.CanceledException e) {
            Log.d("MediaDataManager", "Intent canceled", e);
            return false;
        }
    }

    public static final MediaAction createActionsFromState$nextCustomAction(TransformingSequence$iterator$1 transformingSequence$iterator$1) {
        if (transformingSequence$iterator$1.hasNext()) {
            return (MediaAction) transformingSequence$iterator$1.next();
        }
        return null;
    }

    public static Pair generateActionsFromSemantic(MediaButton mediaButton) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        MediaAction mediaAction = mediaButton.custom0;
        if (mediaAction != null) {
            arrayList.add(mediaAction);
        }
        MediaAction mediaAction2 = mediaButton.prevOrCustom;
        if (mediaAction2 != null) {
            arrayList.add(mediaAction2);
            arrayList2.add(Integer.valueOf(arrayList.indexOf(mediaAction2)));
        }
        MediaAction mediaAction3 = mediaButton.playOrPause;
        if (mediaAction3 != null) {
            arrayList.add(mediaAction3);
            arrayList2.add(Integer.valueOf(arrayList.indexOf(mediaAction3)));
        }
        MediaAction mediaAction4 = mediaButton.nextOrCustom;
        if (mediaAction4 != null) {
            arrayList.add(mediaAction4);
            arrayList2.add(Integer.valueOf(arrayList.indexOf(mediaAction4)));
        }
        MediaAction mediaAction5 = mediaButton.custom1;
        if (mediaAction5 != null) {
            arrayList.add(mediaAction5);
        }
        return new Pair(arrayList, arrayList2);
    }

    public static void removeEntry$default(MediaDataManager mediaDataManager, String str) {
        MediaData mediaData = (MediaData) mediaDataManager.mediaEntries.remove(str);
        if (mediaData != null) {
            mediaDataManager.logger.logMediaRemoved(mediaData.appUid, mediaData.packageName, mediaData.instanceId);
        }
        mediaDataManager.notifyMediaDataRemoved(str);
    }

    public final void convertToResumePlayer(MediaData mediaData, String str) {
        boolean z;
        MediaAction mediaAction;
        List list;
        KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0.m("Converting ", str, " to resume", "MediaDataManager");
        CharSequence charSequence = mediaData.song;
        boolean z2 = true;
        if (charSequence != null && !StringsKt__StringsJVMKt.isBlank(charSequence)) {
            z = false;
        } else {
            z = true;
        }
        MediaUiEventLogger mediaUiEventLogger = this.logger;
        String str2 = mediaData.packageName;
        if (z) {
            Log.e("MediaDataManager", "Description incomplete");
            notifyMediaDataRemoved(str);
            mediaUiEventLogger.logMediaRemoved(mediaData.appUid, str2, mediaData.instanceId);
            return;
        }
        Runnable runnable = mediaData.resumeAction;
        PendingIntent pendingIntent = null;
        if (runnable != null) {
            mediaAction = getResumeMediaAction(runnable);
        } else {
            mediaAction = null;
        }
        if (mediaAction != null) {
            list = Collections.singletonList(mediaAction);
        } else {
            list = EmptyList.INSTANCE;
        }
        Context context = this.context;
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str2);
        if (launchIntentForPackage != null) {
            pendingIntent = PendingIntent.getActivity(context, 0, launchIntentForPackage, QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY);
        }
        MediaData copy$default = MediaData.copy$default(mediaData, list, Collections.singletonList(0), new MediaButton(mediaAction, null, null, null, null, false, false, 126, null), null, pendingIntent, null, false, null, true, false, Boolean.FALSE, true, null, 0, 265135231);
        LinkedHashMap linkedHashMap = this.mediaEntries;
        if (linkedHashMap.put(str2, copy$default) != null) {
            z2 = false;
        }
        boolean z3 = z2;
        StringBuilder sb = new StringBuilder("migrating? ");
        sb.append(z3);
        sb.append(" from ");
        sb.append(str);
        sb.append(" -> ");
        ExifInterface$$ExternalSyntheticOutline0.m(sb, str2, "MediaDataManager");
        if (z3) {
            notifyMediaDataLoaded(str2, str, copy$default);
        } else {
            notifyMediaDataRemoved(str);
            notifyMediaDataLoaded(str2, str2, copy$default);
        }
        mediaUiEventLogger.logger.logWithInstanceId(MediaUiEvent.ACTIVE_TO_RESUME, copy$default.appUid, str2, copy$default.instanceId);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (((MediaData) entry.getValue()).resumption) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        int size = linkedHashMap2.size();
        if (size > 5) {
            for (Pair pair : CollectionsKt___CollectionsKt.sortedWith(MapsKt___MapsKt.toList(linkedHashMap2), new Comparator() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$convertToResumePlayer$$inlined$sortedBy$1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    Pair pair2 = (Pair) obj;
                    Long valueOf = Long.valueOf(((MediaData) pair2.component2()).lastActive);
                    Pair pair3 = (Pair) obj2;
                    return ComparisonsKt__ComparisonsKt.compareValues(valueOf, Long.valueOf(((MediaData) pair3.component2()).lastActive));
                }
            }).subList(0, size - 5)) {
                String str3 = (String) pair.component1();
                MediaData mediaData2 = (MediaData) pair.component2();
                Log.d("MediaDataManager", "Removing excess control " + str3);
                linkedHashMap.remove(str3);
                notifyMediaDataRemoved(str3);
                mediaUiEventLogger.logMediaRemoved(mediaData2.appUid, mediaData2.packageName, mediaData2.instanceId);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final MediaButton createActionsFromState(final String str, final MediaController mediaController, UserHandle userHandle) {
        boolean z;
        MediaAction standardAction;
        boolean z2;
        boolean z3;
        MediaAction mediaAction;
        MediaAction mediaAction2;
        final PlaybackState playbackState = mediaController.getPlaybackState();
        MediaAction mediaAction3 = null;
        if (playbackState != null) {
            MediaFlags mediaFlags = this.mediaFlags;
            mediaFlags.getClass();
            if (!StatusBarManager.useMediaSessionActionsForApp(str, userHandle)) {
                Flags.INSTANCE.getClass();
                mediaFlags.featureFlags.getClass();
                z = false;
            } else {
                z = true;
            }
            if (z) {
                if (NotificationMediaManager.CONNECTING_MEDIA_STATES.contains(Integer.valueOf(playbackState.getState()))) {
                    Context context = this.context;
                    Drawable drawable = context.getDrawable(R.drawable.stat_sys_battery_charge_anim71);
                    ((Animatable) drawable).start();
                    standardAction = new MediaAction(drawable, null, context.getString(com.android.systemui.R.string.controls_media_button_connecting), context.getDrawable(com.android.systemui.R.drawable.ic_media_connecting_container), Integer.valueOf(R.drawable.stat_sys_battery_charge_anim71));
                } else if (NotificationMediaManager.isPlayingState(playbackState.getState())) {
                    standardAction = getStandardAction(mediaController, playbackState.getActions(), 2L);
                } else {
                    standardAction = getStandardAction(mediaController, playbackState.getActions(), 4L);
                }
                MediaAction mediaAction4 = standardAction;
                MediaAction standardAction2 = getStandardAction(mediaController, playbackState.getActions(), 16L);
                MediaAction standardAction3 = getStandardAction(mediaController, playbackState.getActions(), 32L);
                TransformingSequence$iterator$1 transformingSequence$iterator$1 = new TransformingSequence$iterator$1(new TransformingSequence(SequencesKt___SequencesKt.filterNotNull(new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(playbackState.getCustomActions())), new Function1() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$createActionsFromState$customActions$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        final PlaybackState.CustomAction customAction = (PlaybackState.CustomAction) obj;
                        MediaDataManager mediaDataManager = MediaDataManager.this;
                        String str2 = str;
                        final MediaController mediaController2 = mediaController;
                        String str3 = MediaDataManager.SMARTSPACE_UI_SURFACE_LABEL;
                        mediaDataManager.getClass();
                        return new MediaAction(Icon.createWithResource(str2, customAction.getIcon()).loadDrawable(mediaDataManager.context), new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$getCustomAction$1
                            @Override // java.lang.Runnable
                            public final void run() {
                                MediaController.TransportControls transportControls = mediaController2.getTransportControls();
                                PlaybackState.CustomAction customAction2 = customAction;
                                transportControls.sendCustomAction(customAction2, customAction2.getExtras());
                            }
                        }, customAction.getName(), null, null, 16, null);
                    }
                }));
                Bundle extras = mediaController.getExtras();
                if (extras != null && extras.getBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS")) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Bundle extras2 = mediaController.getExtras();
                if (extras2 != null && extras2.getBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT")) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (standardAction2 != null) {
                    mediaAction = standardAction2;
                } else if (!z2) {
                    mediaAction = createActionsFromState$nextCustomAction(transformingSequence$iterator$1);
                } else {
                    mediaAction = null;
                }
                if (standardAction3 != null) {
                    mediaAction2 = standardAction3;
                } else {
                    if (!z3) {
                        mediaAction3 = createActionsFromState$nextCustomAction(transformingSequence$iterator$1);
                    }
                    mediaAction2 = mediaAction3;
                }
                return new MediaButton(mediaAction4, mediaAction2, mediaAction, createActionsFromState$nextCustomAction(transformingSequence$iterator$1), createActionsFromState$nextCustomAction(transformingSequence$iterator$1), z3, z2);
            }
        }
        return null;
    }

    public final boolean dismissMediaData(final String str, boolean z) {
        boolean z2;
        if (this.mediaEntries.get(str) != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.backgroundExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$dismissMediaData$1
            @Override // java.lang.Runnable
            public final void run() {
                boolean z3;
                MediaSession.Token token;
                MediaData mediaData = (MediaData) MediaDataManager.this.mediaEntries.get(str);
                if (mediaData != null) {
                    MediaDataManager mediaDataManager = MediaDataManager.this;
                    if (mediaData.playbackLocation == 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z3 && (token = mediaData.token) != null) {
                        MediaControllerFactory mediaControllerFactory = mediaDataManager.mediaControllerFactory;
                        mediaControllerFactory.getClass();
                        new MediaController(mediaControllerFactory.mContext, token).getTransportControls().stop();
                    }
                }
            }
        });
        if (z) {
            removeEntry$default(this, str);
        } else {
            this.foregroundExecutor.executeDelayed(0L, new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$dismissMediaData$2
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataManager.removeEntry$default(MediaDataManager.this, str);
                }
            });
        }
        return z2;
    }

    public final void dismissSmartspaceRecommendation(String str) {
        if (Intrinsics.areEqual(this.smartspaceMediaData.targetId, str) && this.smartspaceMediaData.isValid()) {
            Log.d("MediaDataManager", "Dismissing Smartspace media target");
            SmartspaceMediaData smartspaceMediaData = this.smartspaceMediaData;
            if (smartspaceMediaData.isActive) {
                this.smartspaceMediaData = SmartspaceMediaData.copy$default(MediaDataManagerKt.EMPTY_SMARTSPACE_MEDIA_DATA, smartspaceMediaData.targetId, false, null, 0L, smartspaceMediaData.instanceId, 0L, VolteConstants.ErrorCode.ALTERNATIVE_SERVICES_EMERGENCY_CSFB);
            }
            this.foregroundExecutor.executeDelayed(0L, new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$dismissSmartspaceRecommendation$1
                @Override // java.lang.Runnable
                public final void run() {
                    MediaDataManager mediaDataManager = MediaDataManager.this;
                    mediaDataManager.notifySmartspaceMediaDataRemoved(mediaDataManager.smartspaceMediaData.targetId, true);
                }
            });
        }
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("internalListeners: " + this.internalListeners);
        printWriter.println("externalListeners: " + this.mediaDataFilter.getListeners$frameworks__base__packages__SystemUI__android_common__SystemUI_core());
        printWriter.println("mediaEntries: " + this.mediaEntries);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("useMediaResumption: ", this.useMediaResumption, printWriter);
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("allowMediaRecommendations: ", this.allowMediaRecommendations, printWriter);
    }

    public final MediaAction getResumeMediaAction(Runnable runnable) {
        Context context = this.context;
        return new MediaAction(Icon.createWithResource(context, com.android.systemui.R.drawable.ic_media_play).setTint(this.themeText).loadDrawable(context), runnable, context.getString(com.android.systemui.R.string.controls_media_resume), context.getDrawable(com.android.systemui.R.drawable.ic_media_play_container), null, 16, null);
    }

    public final MediaAction getStandardAction(final MediaController mediaController, long j, long j2) {
        boolean z;
        if (((j2 == 4 || j2 == 2) && (j & 512) > 0) || (j & j2) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return null;
        }
        Context context = this.context;
        if (j2 == 4) {
            return new MediaAction(context.getDrawable(com.android.systemui.R.drawable.sec_media_player), new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$getStandardAction$1
                @Override // java.lang.Runnable
                public final void run() {
                    mediaController.getTransportControls().play();
                }
            }, context.getString(com.android.systemui.R.string.controls_media_button_play), context.getDrawable(com.android.systemui.R.drawable.ic_media_play_container), null, 16, null);
        }
        if (j2 == 2) {
            return new MediaAction(context.getDrawable(com.android.systemui.R.drawable.sec_media_pause), new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$getStandardAction$2
                @Override // java.lang.Runnable
                public final void run() {
                    mediaController.getTransportControls().pause();
                }
            }, context.getString(com.android.systemui.R.string.controls_media_button_pause), context.getDrawable(com.android.systemui.R.drawable.ic_media_pause_container), null, 16, null);
        }
        if (j2 == 16) {
            return new MediaAction(context.getDrawable(com.android.systemui.R.drawable.sec_media_preview), new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$getStandardAction$3
                @Override // java.lang.Runnable
                public final void run() {
                    mediaController.getTransportControls().skipToPrevious();
                }
            }, context.getString(com.android.systemui.R.string.controls_media_button_prev), null, null, 16, null);
        }
        if (j2 != 32) {
            return null;
        }
        return new MediaAction(context.getDrawable(com.android.systemui.R.drawable.sec_media_next), new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$getStandardAction$4
            @Override // java.lang.Runnable
            public final void run() {
                mediaController.getTransportControls().skipToNext();
            }
        }, context.getString(com.android.systemui.R.string.controls_media_button_next), null, null, 16, null);
    }

    public final boolean hasActiveMediaOrRecommendation() {
        boolean z;
        MediaDataFilter mediaDataFilter = this.mediaDataFilter;
        LinkedHashMap linkedHashMap = mediaDataFilter.userEntries;
        if (!linkedHashMap.isEmpty()) {
            Iterator it = linkedHashMap.entrySet().iterator();
            while (it.hasNext()) {
                if (((MediaData) ((Map.Entry) it.next()).getValue()).active) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (z) {
            return true;
        }
        SmartspaceMediaData smartspaceMediaData = mediaDataFilter.smartspaceMediaData;
        if (smartspaceMediaData.isActive && (smartspaceMediaData.isValid() || mediaDataFilter.reactivatedKey != null)) {
            return true;
        }
        return false;
    }

    public final Bitmap loadBitmapFromUri(Uri uri) {
        if (uri.getScheme() == null) {
            return null;
        }
        if (!uri.getScheme().equals("content") && !uri.getScheme().equals("android.resource") && !uri.getScheme().equals("file")) {
            return null;
        }
        try {
            return ImageDecoder.decodeBitmap(ImageDecoder.createSource(this.context.getContentResolver(), uri), new ImageDecoder.OnHeaderDecodedListener() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$loadBitmapFromUri$1
                @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
                public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
                    float f;
                    boolean z;
                    int width = imageInfo.getSize().getWidth();
                    int height = imageInfo.getSize().getHeight();
                    android.util.Pair pair = new android.util.Pair(Integer.valueOf(width), Integer.valueOf(height));
                    android.util.Pair pair2 = new android.util.Pair(Integer.valueOf(MediaDataManager.this.artworkWidth), Integer.valueOf(MediaDataManager.this.artworkHeight));
                    float intValue = ((Integer) pair.first).intValue();
                    float intValue2 = ((Integer) pair.second).intValue();
                    float intValue3 = ((Integer) pair2.first).intValue();
                    float intValue4 = ((Integer) pair2.second).intValue();
                    if (intValue != 0.0f && intValue2 != 0.0f && intValue3 != 0.0f && intValue4 != 0.0f) {
                        if (intValue / intValue2 > intValue3 / intValue4) {
                            f = intValue4 / intValue2;
                        } else {
                            f = intValue3 / intValue;
                        }
                    } else {
                        f = 0.0f;
                    }
                    if (f == 0.0f) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z && f < 1.0f) {
                        imageDecoder.setTargetSize((int) (width * f), (int) (f * height));
                    }
                    imageDecoder.setAllocator(1);
                }
            });
        } catch (IOException e) {
            Log.e("MediaDataManager", "Unable to load bitmap", e);
            return null;
        } catch (RuntimeException e2) {
            Log.e("MediaDataManager", "Unable to load bitmap", e2);
            return null;
        }
    }

    public final void logSingleVsMultipleMediaAdded(int i, String str, InstanceId instanceId) {
        LinkedHashMap linkedHashMap = this.mediaEntries;
        int size = linkedHashMap.size();
        MediaUiEventLogger mediaUiEventLogger = this.logger;
        if (size == 1) {
            mediaUiEventLogger.logger.logWithInstanceId(MediaUiEvent.MEDIA_CAROUSEL_SINGLE_PLAYER, i, str, instanceId);
        } else if (linkedHashMap.size() == 2) {
            mediaUiEventLogger.logger.logWithInstanceId(MediaUiEvent.MEDIA_CAROUSEL_MULTIPLE_PLAYERS, i, str, instanceId);
        }
    }

    public final void notifyMediaDataLoaded(String str, String str2, MediaData mediaData) {
        Iterator it = this.internalListeners.iterator();
        while (it.hasNext()) {
            Listener.DefaultImpls.onMediaDataLoaded$default((Listener) it.next(), str, str2, mediaData, false, 0, false, 56);
        }
    }

    public final void notifyMediaDataRemoved(String str) {
        Iterator it = this.internalListeners.iterator();
        while (it.hasNext()) {
            ((Listener) it.next()).onMediaDataRemoved(str);
        }
    }

    public final void notifySmartspaceMediaDataRemoved(String str, boolean z) {
        Iterator it = this.internalListeners.iterator();
        while (it.hasNext()) {
            ((Listener) it.next()).onSmartspaceMediaDataRemoved(str, z);
        }
    }

    public final void onMediaDataLoaded(String str, String str2, MediaData mediaData) {
        boolean isTagEnabled = Trace.isTagEnabled(4096L);
        LinkedHashMap linkedHashMap = this.mediaEntries;
        if (isTagEnabled) {
            Trace.traceBegin(4096L, "MediaDataManager#onMediaDataLoaded");
            try {
                Assert.isMainThread();
                if (linkedHashMap.containsKey(str)) {
                    linkedHashMap.put(str, mediaData);
                    notifyMediaDataLoaded(str, str2, mediaData);
                }
                Unit unit = Unit.INSTANCE;
                return;
            } finally {
                Trace.traceEnd(4096L);
            }
        }
        Assert.isMainThread();
        if (linkedHashMap.containsKey(str)) {
            linkedHashMap.put(str, mediaData);
            notifyMediaDataLoaded(str, str2, mediaData);
        }
    }

    public final void onMediaDataRemoved(String str) {
        Log.d("MediaDataManager", "onMediaDataRemoved key=".concat(str));
        Assert.isMainThread();
        dismissMediaData(str, true);
    }

    public final void onNotificationAdded(final String str, final StatusBarNotification statusBarNotification) {
        final String str2;
        boolean z;
        if (this.useQsMediaPlayer) {
            String[] strArr = MediaDataManagerKt.ART_URIS;
            if (statusBarNotification.getNotification().isMediaNotification()) {
                Assert.isMainThread();
                String packageName = statusBarNotification.getPackageName();
                LinkedHashMap linkedHashMap = this.mediaEntries;
                if (linkedHashMap.containsKey(str)) {
                    str2 = str;
                } else {
                    if (!linkedHashMap.containsKey(packageName)) {
                        packageName = null;
                    }
                    str2 = packageName;
                }
                if (str2 == null) {
                    linkedHashMap.put(str, MediaData.copy$default(MediaDataManagerKt.LOADING, null, null, null, statusBarNotification.getPackageName(), null, null, false, null, false, false, null, false, this.logger.getNewInstanceId(), 0, 260045823));
                } else if (!Intrinsics.areEqual(str2, str)) {
                    Object remove = linkedHashMap.remove(str2);
                    Intrinsics.checkNotNull(remove);
                    linkedHashMap.put(str, (MediaData) remove);
                } else {
                    z = false;
                    final boolean z2 = z;
                    this.backgroundExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$loadMediaData$1
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Removed duplicated region for block: B:105:0x02a0  */
                        /* JADX WARN: Removed duplicated region for block: B:145:0x042e  */
                        /* JADX WARN: Removed duplicated region for block: B:149:0x044d  */
                        /* JADX WARN: Removed duplicated region for block: B:156:0x0476  */
                        /* JADX WARN: Removed duplicated region for block: B:159:0x0481  */
                        /* JADX WARN: Removed duplicated region for block: B:174:0x04ab  */
                        /* JADX WARN: Removed duplicated region for block: B:192:0x047b  */
                        /* JADX WARN: Removed duplicated region for block: B:194:0x045a  */
                        /* JADX WARN: Removed duplicated region for block: B:195:0x0431  */
                        /* JADX WARN: Removed duplicated region for block: B:206:0x03d9  */
                        /* JADX WARN: Removed duplicated region for block: B:207:0x027c  */
                        /* JADX WARN: Removed duplicated region for block: B:209:0x01d1  */
                        /* JADX WARN: Removed duplicated region for block: B:212:0x01bf  */
                        /* JADX WARN: Removed duplicated region for block: B:213:0x0170  */
                        /* JADX WARN: Removed duplicated region for block: B:52:0x0125  */
                        /* JADX WARN: Removed duplicated region for block: B:62:0x0153  */
                        /* JADX WARN: Removed duplicated region for block: B:66:0x015f  */
                        /* JADX WARN: Removed duplicated region for block: B:70:0x016b  */
                        /* JADX WARN: Removed duplicated region for block: B:73:0x019b  */
                        /* JADX WARN: Removed duplicated region for block: B:81:0x01ca  */
                        /* JADX WARN: Removed duplicated region for block: B:88:0x01e2  */
                        /* JADX WARN: Removed duplicated region for block: B:94:0x0209  */
                        /* JADX WARN: Type inference failed for: r0v11, types: [T, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r0v56, types: [T, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r11v0 */
                        /* JADX WARN: Type inference failed for: r11v1, types: [T, java.lang.CharSequence] */
                        /* JADX WARN: Type inference failed for: r11v39, types: [T, java.lang.String] */
                        /* JADX WARN: Type inference failed for: r11v47, types: [T] */
                        /* JADX WARN: Type inference failed for: r11v52 */
                        /* JADX WARN: Type inference failed for: r11v53, types: [T] */
                        /* JADX WARN: Type inference failed for: r11v60 */
                        /* JADX WARN: Type inference failed for: r11v61 */
                        /* JADX WARN: Type inference failed for: r11v62 */
                        /* JADX WARN: Type inference failed for: r11v63 */
                        /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r1v12, types: [T, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r6v17, types: [java.util.List] */
                        /* JADX WARN: Type inference failed for: r6v2 */
                        /* JADX WARN: Type inference failed for: r6v29, types: [T, com.android.systemui.media.controls.models.player.MediaDeviceData] */
                        /* JADX WARN: Type inference failed for: r6v3, types: [T, java.lang.CharSequence] */
                        /* JADX WARN: Type inference failed for: r6v34, types: [T] */
                        /* JADX WARN: Type inference failed for: r6v40 */
                        /* JADX WARN: Type inference failed for: r6v41 */
                        /* JADX WARN: Type inference failed for: r6v42 */
                        /* JADX WARN: Type inference failed for: r6v9, types: [T, kotlin.collections.EmptyList] */
                        @Override // java.lang.Runnable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct code enable 'Show inconsistent code' option in preferences
                        */
                        public final void run() {
                            /*
                                Method dump skipped, instructions count: 1309
                                To view this dump change 'Code comments level' option to 'DEBUG'
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.controls.pipeline.MediaDataManager$loadMediaData$1.run():void");
                        }
                    });
                    return;
                }
                z = true;
                final boolean z22 = z;
                this.backgroundExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$loadMediaData$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        /*  JADX ERROR: Method code generation error
                            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                            	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                            */
                        /*
                            Method dump skipped, instructions count: 1309
                            To view this dump change 'Code comments level' option to 'DEBUG'
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.controls.pipeline.MediaDataManager$loadMediaData$1.run():void");
                    }
                });
                return;
            }
        }
        onNotificationRemoved(str);
    }

    public final void onNotificationRemoved(String str) {
        boolean z;
        boolean z2;
        Assert.isMainThread();
        MediaData mediaData = (MediaData) this.mediaEntries.remove(str);
        if (mediaData == null) {
            return;
        }
        boolean z3 = true;
        if (mediaData.playbackLocation == 0) {
            z = true;
        } else {
            z = false;
        }
        MediaFlags mediaFlags = this.mediaFlags;
        if (!z) {
            mediaFlags.getClass();
            Flags.INSTANCE.getClass();
            mediaFlags.featureFlags.getClass();
            z2 = false;
        } else {
            z2 = true;
        }
        if (!this.useMediaResumption || mediaData.resumeAction == null || !z2) {
            z3 = false;
        }
        if (z3) {
            convertToResumePlayer(mediaData, str);
            return;
        }
        mediaFlags.getClass();
        Flags.INSTANCE.getClass();
        mediaFlags.featureFlags.getClass();
        notifyMediaDataRemoved(str);
        this.logger.logMediaRemoved(mediaData.appUid, mediaData.packageName, mediaData.instanceId);
    }

    @Override // com.android.systemui.plugins.BcSmartspaceDataPlugin.SmartspaceTargetListener
    public final void onSmartspaceTargetsUpdated(List list) {
        Intent intent;
        String str;
        SmartspaceMediaData copy$default;
        String string;
        if (!this.allowMediaRecommendations) {
            Log.d("MediaDataManager", "Smartspace recommendation is disabled in Settings.");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof SmartspaceTarget) {
                arrayList.add(obj);
            }
        }
        int size = arrayList.size();
        MediaFlags mediaFlags = this.mediaFlags;
        if (size != 0) {
            if (size != 1) {
                Log.wtf("MediaDataManager", "More than 1 Smartspace Media Update. Resetting the status...");
                notifySmartspaceMediaDataRemoved(this.smartspaceMediaData.targetId, false);
                this.smartspaceMediaData = MediaDataManagerKt.EMPTY_SMARTSPACE_MEDIA_DATA;
                return;
            }
            SmartspaceTarget smartspaceTarget = (SmartspaceTarget) arrayList.get(0);
            if (Intrinsics.areEqual(this.smartspaceMediaData.targetId, smartspaceTarget.getSmartspaceTargetId())) {
                return;
            }
            Log.d("MediaDataManager", "Forwarding Smartspace media update.");
            if (smartspaceTarget.getBaseAction() != null && smartspaceTarget.getBaseAction().getExtras() != null) {
                intent = (Intent) smartspaceTarget.getBaseAction().getExtras().getParcelable("dismiss_intent");
            } else {
                intent = null;
            }
            mediaFlags.isPersistentSsCardEnabled();
            List iconGrid = smartspaceTarget.getIconGrid();
            if (iconGrid != null && !iconGrid.isEmpty()) {
                Iterator it = iconGrid.iterator();
                while (it.hasNext()) {
                    Bundle extras = ((SmartspaceAction) it.next()).getExtras();
                    if (extras != null && (string = extras.getString(EXTRAS_MEDIA_SOURCE_PACKAGE_NAME)) != null) {
                        str = string;
                        break;
                    }
                }
                Log.w("MediaDataManager", "No valid package name is provided.");
            } else {
                Log.w("MediaDataManager", "Empty or null media recommendation list.");
            }
            str = null;
            MediaUiEventLogger mediaUiEventLogger = this.logger;
            if (str != null) {
                copy$default = new SmartspaceMediaData(smartspaceTarget.getSmartspaceTargetId(), true, str, smartspaceTarget.getBaseAction(), smartspaceTarget.getIconGrid(), intent, smartspaceTarget.getCreationTimeMillis(), mediaUiEventLogger.getNewInstanceId(), smartspaceTarget.getExpiryTimeMillis());
            } else {
                copy$default = SmartspaceMediaData.copy$default(MediaDataManagerKt.EMPTY_SMARTSPACE_MEDIA_DATA, smartspaceTarget.getSmartspaceTargetId(), true, intent, smartspaceTarget.getCreationTimeMillis(), mediaUiEventLogger.getNewInstanceId(), smartspaceTarget.getExpiryTimeMillis(), 28);
            }
            this.smartspaceMediaData = copy$default;
            Iterator it2 = this.internalListeners.iterator();
            while (it2.hasNext()) {
                ((Listener) it2.next()).onSmartspaceMediaDataLoaded(copy$default.targetId, copy$default);
            }
            return;
        }
        if (!this.smartspaceMediaData.isActive) {
            return;
        }
        Log.d("MediaDataManager", "Set Smartspace media to be inactive for the data update");
        mediaFlags.isPersistentSsCardEnabled();
        SmartspaceMediaData smartspaceMediaData = MediaDataManagerKt.EMPTY_SMARTSPACE_MEDIA_DATA;
        SmartspaceMediaData smartspaceMediaData2 = this.smartspaceMediaData;
        SmartspaceMediaData copy$default2 = SmartspaceMediaData.copy$default(smartspaceMediaData, smartspaceMediaData2.targetId, false, null, 0L, smartspaceMediaData2.instanceId, 0L, VolteConstants.ErrorCode.ALTERNATIVE_SERVICES_EMERGENCY_CSFB);
        this.smartspaceMediaData = copy$default2;
        notifySmartspaceMediaDataRemoved(copy$default2.targetId, false);
    }

    public MediaDataManager(Context context, Executor executor, Executor executor2, DelayableExecutor delayableExecutor, MediaControllerFactory mediaControllerFactory, DumpManager dumpManager, BroadcastDispatcher broadcastDispatcher, MediaTimeoutListener mediaTimeoutListener, MediaResumeListener mediaResumeListener, MediaSessionBasedFilter mediaSessionBasedFilter, MediaDeviceManager mediaDeviceManager, MediaDataCombineLatest mediaDataCombineLatest, MediaDataFilter mediaDataFilter, ActivityStarter activityStarter, SmartspaceMediaDataProvider smartspaceMediaDataProvider, SystemClock systemClock, TunerService tunerService, MediaFlags mediaFlags, MediaUiEventLogger mediaUiEventLogger, SmartspaceManager smartspaceManager, KeyguardUpdateMonitor keyguardUpdateMonitor) {
        this(context, executor, executor2, delayableExecutor, mediaControllerFactory, broadcastDispatcher, dumpManager, mediaTimeoutListener, mediaResumeListener, mediaSessionBasedFilter, mediaDeviceManager, mediaDataCombineLatest, mediaDataFilter, activityStarter, smartspaceMediaDataProvider, Utils.useMediaResumption(context), Utils.useQsMediaPlayer(context), systemClock, tunerService, mediaFlags, mediaUiEventLogger, smartspaceManager, keyguardUpdateMonitor);
    }
}
