package com.android.systemui.media.controls.resume;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.media.MediaDescription;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.UserHandle;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.internal.logging.InstanceId;
import com.android.systemui.Dumpable;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.flags.Flags;
import com.android.systemui.media.controls.models.player.MediaData;
import com.android.systemui.media.controls.models.recommendation.SmartspaceMediaData;
import com.android.systemui.media.controls.pipeline.MediaDataManager;
import com.android.systemui.media.controls.pipeline.MediaDataManagerKt;
import com.android.systemui.media.controls.pipeline.MediaTimeoutListenerKt;
import com.android.systemui.media.controls.resume.ResumeMediaBrowser;
import com.android.systemui.media.controls.util.MediaFlags;
import com.android.systemui.media.controls.util.MediaUiEvent;
import com.android.systemui.media.controls.util.MediaUiEventLogger;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.Utils;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.util.time.SystemClockImpl;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaResumeListener implements MediaDataManager.Listener, Dumpable {
    public final Executor backgroundExecutor;
    public final Context context;
    public int currentUserId;
    public final Executor mainExecutor;
    public ResumeMediaBrowser mediaBrowser;
    public final MediaResumeListener$mediaBrowserCallback$1 mediaBrowserCallback;
    public final ResumeMediaBrowserFactory mediaBrowserFactory;
    public MediaDataManager mediaDataManager;
    public final MediaFlags mediaFlags;
    public final ConcurrentLinkedQueue resumeComponents = new ConcurrentLinkedQueue();
    public final SystemClock systemClock;
    public final TunerService tunerService;
    public boolean useMediaResumption;
    public final MediaResumeListener$userTrackerCallback$1 userTrackerCallback;
    public final MediaResumeListener$userUnlockReceiver$1 userUnlockReceiver;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.systemui.media.controls.resume.MediaResumeListener$userTrackerCallback$1, com.android.systemui.settings.UserTracker$Callback] */
    /* JADX WARN: Type inference failed for: r3v7, types: [com.android.systemui.media.controls.resume.MediaResumeListener$mediaBrowserCallback$1] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.android.systemui.media.controls.resume.MediaResumeListener$userUnlockReceiver$1, android.content.BroadcastReceiver] */
    public MediaResumeListener(Context context, BroadcastDispatcher broadcastDispatcher, UserTracker userTracker, Executor executor, Executor executor2, TunerService tunerService, ResumeMediaBrowserFactory resumeMediaBrowserFactory, DumpManager dumpManager, SystemClock systemClock, MediaFlags mediaFlags) {
        this.context = context;
        this.mainExecutor = executor;
        this.backgroundExecutor = executor2;
        this.tunerService = tunerService;
        this.mediaBrowserFactory = resumeMediaBrowserFactory;
        this.systemClock = systemClock;
        this.mediaFlags = mediaFlags;
        this.useMediaResumption = Utils.useMediaResumption(context);
        this.currentUserId = context.getUserId();
        ?? r4 = new BroadcastReceiver() { // from class: com.android.systemui.media.controls.resume.MediaResumeListener$userUnlockReceiver$1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                if (Intrinsics.areEqual("android.intent.action.USER_UNLOCKED", intent.getAction())) {
                    int intExtra = intent.getIntExtra("android.intent.extra.user_handle", -1);
                    MediaResumeListener mediaResumeListener = MediaResumeListener.this;
                    if (intExtra == mediaResumeListener.currentUserId && mediaResumeListener.useMediaResumption) {
                        PackageManager packageManager = mediaResumeListener.context.getPackageManager();
                        ((SystemClockImpl) mediaResumeListener.systemClock).getClass();
                        long currentTimeMillis = System.currentTimeMillis();
                        Iterator it = mediaResumeListener.resumeComponents.iterator();
                        while (it.hasNext()) {
                            Pair pair = (Pair) it.next();
                            if (currentTimeMillis - ((Number) pair.getSecond()).longValue() <= MediaTimeoutListenerKt.RESUME_MEDIA_TIMEOUT) {
                                Intent intent2 = new Intent("android.media.browse.MediaBrowserService");
                                intent2.setComponent((ComponentName) pair.getFirst());
                                if (packageManager.resolveServiceAsUser(intent2, 0, mediaResumeListener.currentUserId) != null) {
                                    ComponentName componentName = (ComponentName) pair.getFirst();
                                    int i = mediaResumeListener.currentUserId;
                                    MediaResumeListener$mediaBrowserCallback$1 mediaResumeListener$mediaBrowserCallback$1 = mediaResumeListener.mediaBrowserCallback;
                                    ResumeMediaBrowserFactory resumeMediaBrowserFactory2 = mediaResumeListener.mediaBrowserFactory;
                                    ResumeMediaBrowser resumeMediaBrowser = new ResumeMediaBrowser(resumeMediaBrowserFactory2.mContext, mediaResumeListener$mediaBrowserCallback$1, componentName, resumeMediaBrowserFactory2.mBrowserFactory, resumeMediaBrowserFactory2.mLogger, i);
                                    Bundle bundle = new Bundle();
                                    bundle.putBoolean("android.service.media.extra.RECENT", true);
                                    MediaBrowserFactory mediaBrowserFactory = resumeMediaBrowser.mBrowserFactory;
                                    mediaBrowserFactory.getClass();
                                    resumeMediaBrowser.connectBrowser(new MediaBrowser(mediaBrowserFactory.mContext, resumeMediaBrowser.mComponentName, resumeMediaBrowser.mConnectionCallback, bundle), "findRecentMedia");
                                } else {
                                    Log.d("MediaResumeListener", "User " + mediaResumeListener.currentUserId + " does not have component " + pair.getFirst());
                                }
                            }
                        }
                    }
                }
            }
        };
        this.userUnlockReceiver = r4;
        ?? r2 = new UserTracker.Callback() { // from class: com.android.systemui.media.controls.resume.MediaResumeListener$userTrackerCallback$1
            @Override // com.android.systemui.settings.UserTracker.Callback
            public final void onUserChanged(int i, Context context2) {
                MediaResumeListener mediaResumeListener = MediaResumeListener.this;
                mediaResumeListener.currentUserId = i;
                mediaResumeListener.loadSavedComponents();
            }
        };
        this.userTrackerCallback = r2;
        this.mediaBrowserCallback = new ResumeMediaBrowser.Callback() { // from class: com.android.systemui.media.controls.resume.MediaResumeListener$mediaBrowserCallback$1
            @Override // com.android.systemui.media.controls.resume.ResumeMediaBrowser.Callback
            public final void addTrack(final MediaDescription mediaDescription, ComponentName componentName, ResumeMediaBrowser resumeMediaBrowser) {
                final MediaSession.Token sessionToken;
                MediaDataManager mediaDataManager;
                int i;
                Integer num = null;
                if (!resumeMediaBrowser.isBrowserConnected()) {
                    sessionToken = null;
                } else {
                    sessionToken = resumeMediaBrowser.mMediaBrowser.getSessionToken();
                }
                Context context2 = resumeMediaBrowser.mContext;
                final PendingIntent activity = PendingIntent.getActivity(context2, 0, context2.getPackageManager().getLaunchIntentForPackage(resumeMediaBrowser.mComponentName.getPackageName()), QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY);
                MediaResumeListener mediaResumeListener = MediaResumeListener.this;
                PackageManager packageManager = mediaResumeListener.context.getPackageManager();
                CharSequence packageName = componentName.getPackageName();
                final MediaResumeListener$getResumeAction$1 mediaResumeListener$getResumeAction$1 = new MediaResumeListener$getResumeAction$1(mediaResumeListener, componentName);
                try {
                    packageName = packageManager.getApplicationLabel(packageManager.getApplicationInfo(componentName.getPackageName(), 0));
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e("MediaResumeListener", "Error getting package information", e);
                }
                Log.d("MediaResumeListener", "Adding resume controls for " + resumeMediaBrowser.mUserId + ": " + mediaDescription);
                MediaDataManager mediaDataManager2 = mediaResumeListener.mediaDataManager;
                if (mediaDataManager2 == null) {
                    mediaDataManager = null;
                } else {
                    mediaDataManager = mediaDataManager2;
                }
                final int i2 = resumeMediaBrowser.mUserId;
                final String obj = packageName.toString();
                final String packageName2 = componentName.getPackageName();
                LinkedHashMap linkedHashMap = mediaDataManager.mediaEntries;
                if (!linkedHashMap.containsKey(packageName2)) {
                    MediaUiEventLogger mediaUiEventLogger = mediaDataManager.logger;
                    InstanceId newInstanceId = mediaUiEventLogger.getNewInstanceId();
                    try {
                        ApplicationInfo applicationInfo = mediaDataManager.context.getPackageManager().getApplicationInfo(packageName2, 0);
                        if (applicationInfo != null) {
                            num = Integer.valueOf(applicationInfo.uid);
                        }
                        Intrinsics.checkNotNull(num);
                        i = num.intValue();
                    } catch (PackageManager.NameNotFoundException e2) {
                        Log.w("MediaDataManager", "Could not get app UID for ".concat(packageName2), e2);
                        i = -1;
                    }
                    linkedHashMap.put(packageName2, MediaData.copy$default(MediaDataManagerKt.LOADING, null, null, null, packageName2, null, null, false, mediaResumeListener$getResumeAction$1, false, true, null, false, newInstanceId, i, 242711551));
                    mediaDataManager.logSingleVsMultipleMediaAdded(i, packageName2, newInstanceId);
                    mediaUiEventLogger.logger.logWithInstanceId(MediaUiEvent.RESUME_MEDIA_ADDED, i, packageName2, newInstanceId);
                }
                final MediaDataManager mediaDataManager3 = mediaDataManager;
                mediaDataManager.backgroundExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaDataManager$addResumptionControls$1
                    /* JADX WARN: Removed duplicated region for block: B:44:0x00eb  */
                    /* JADX WARN: Removed duplicated region for block: B:62:0x011e  */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public final void run() {
                        /*
                            Method dump skipped, instructions count: 341
                            To view this dump change 'Code comments level' option to 'DEBUG'
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.controls.pipeline.MediaDataManager$addResumptionControls$1.run():void");
                    }
                });
            }
        };
        if (this.useMediaResumption) {
            DumpManager.registerDumpable$default(dumpManager, "MediaResumeListener", this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.USER_UNLOCKED");
            BroadcastDispatcher.registerReceiver$default(broadcastDispatcher, r4, intentFilter, null, UserHandle.ALL, 0, null, 48);
            ((UserTrackerImpl) userTracker).addCallback(r2, executor);
            loadSavedComponents();
        }
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("resumeComponents: " + this.resumeComponents);
    }

    public final void loadSavedComponents() {
        long currentTimeMillis;
        long j;
        boolean z;
        ConcurrentLinkedQueue concurrentLinkedQueue = this.resumeComponents;
        concurrentLinkedQueue.clear();
        boolean z2 = false;
        Iterable iterable = null;
        String string = this.context.getSharedPreferences("media_control_prefs", 0).getString("browser_components_" + this.currentUserId, null);
        if (string != null) {
            List split = new Regex(":").split(string);
            if (!split.isEmpty()) {
                ListIterator listIterator = split.listIterator(split.size());
                while (listIterator.hasPrevious()) {
                    if (((String) listIterator.previous()).length() == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        iterable = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            }
            iterable = EmptyList.INSTANCE;
        }
        if (iterable != null) {
            Iterator it = iterable.iterator();
            boolean z3 = false;
            while (it.hasNext()) {
                List split$default = StringsKt__StringsKt.split$default((String) it.next(), new String[]{"/"}, 0, 6);
                ComponentName componentName = new ComponentName((String) split$default.get(0), (String) split$default.get(1));
                int size = split$default.size();
                SystemClock systemClock = this.systemClock;
                if (size == 3) {
                    try {
                        j = Long.parseLong((String) split$default.get(2));
                    } catch (NumberFormatException unused) {
                        ((SystemClockImpl) systemClock).getClass();
                        currentTimeMillis = System.currentTimeMillis();
                    }
                    concurrentLinkedQueue.add(new Pair(componentName, Long.valueOf(j)));
                } else {
                    ((SystemClockImpl) systemClock).getClass();
                    currentTimeMillis = System.currentTimeMillis();
                }
                j = currentTimeMillis;
                z3 = true;
                concurrentLinkedQueue.add(new Pair(componentName, Long.valueOf(j)));
            }
            z2 = z3;
        }
        Log.d("MediaResumeListener", "loaded resume components for " + this.currentUserId + ": " + Arrays.toString(concurrentLinkedQueue.toArray()));
        if (z2) {
            writeSharedPrefs();
        }
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onMediaDataLoaded(final String str, String str2, MediaData mediaData, boolean z, int i, boolean z2) {
        boolean z3;
        boolean z4;
        if (this.useMediaResumption) {
            final ArrayList arrayList = null;
            if (!str.equals(str2)) {
                setMediaBrowser(null);
            }
            if (mediaData.playbackLocation == 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (!z3) {
                MediaFlags mediaFlags = this.mediaFlags;
                mediaFlags.getClass();
                Flags.INSTANCE.getClass();
                mediaFlags.featureFlags.getClass();
                z4 = false;
            } else {
                z4 = true;
            }
            if (mediaData.resumeAction == null && !mediaData.hasCheckedForResume && z4) {
                MediaDataManager mediaDataManager = this.mediaDataManager;
                if (mediaDataManager == null) {
                    mediaDataManager = null;
                }
                MediaData mediaData2 = (MediaData) mediaDataManager.mediaEntries.get(str);
                if (mediaData2 != null) {
                    mediaData2.resumeAction = null;
                    mediaData2.hasCheckedForResume = true;
                }
                StringBuilder sb = new StringBuilder("Checking for service component for ");
                String str3 = mediaData.packageName;
                ExifInterface$$ExternalSyntheticOutline0.m(sb, str3, "MediaResumeListener");
                List queryIntentServicesAsUser = this.context.getPackageManager().queryIntentServicesAsUser(new Intent("android.media.browse.MediaBrowserService"), 0, this.currentUserId);
                if (queryIntentServicesAsUser != null) {
                    arrayList = new ArrayList();
                    for (Object obj : queryIntentServicesAsUser) {
                        if (Intrinsics.areEqual(((ResolveInfo) obj).serviceInfo.packageName, str3)) {
                            arrayList.add(obj);
                        }
                    }
                }
                if (arrayList != null && arrayList.size() > 0) {
                    this.backgroundExecutor.execute(new Runnable() { // from class: com.android.systemui.media.controls.resume.MediaResumeListener$onMediaDataLoaded$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            final MediaResumeListener mediaResumeListener = MediaResumeListener.this;
                            final String str4 = str;
                            List list = arrayList;
                            Intrinsics.checkNotNull(list);
                            final ComponentName componentName = ((ResolveInfo) list.get(0)).getComponentInfo().getComponentName();
                            mediaResumeListener.getClass();
                            Log.d("MediaResumeListener", "Testing if we can connect to " + componentName);
                            ResumeMediaBrowser.Callback callback = new ResumeMediaBrowser.Callback() { // from class: com.android.systemui.media.controls.resume.MediaResumeListener$tryUpdateResumptionList$1
                                @Override // com.android.systemui.media.controls.resume.ResumeMediaBrowser.Callback
                                public final void addTrack(MediaDescription mediaDescription, ComponentName componentName2, ResumeMediaBrowser resumeMediaBrowser) {
                                    Object obj2;
                                    StringBuilder sb2 = new StringBuilder("Can get resumable media for ");
                                    sb2.append(resumeMediaBrowser.mUserId);
                                    sb2.append(" from ");
                                    ComponentName componentName3 = componentName;
                                    sb2.append(componentName3);
                                    Log.d("MediaResumeListener", sb2.toString());
                                    MediaResumeListener mediaResumeListener2 = mediaResumeListener;
                                    MediaDataManager mediaDataManager2 = mediaResumeListener2.mediaDataManager;
                                    if (mediaDataManager2 == null) {
                                        mediaDataManager2 = null;
                                    }
                                    MediaResumeListener$getResumeAction$1 mediaResumeListener$getResumeAction$1 = new MediaResumeListener$getResumeAction$1(mediaResumeListener2, componentName3);
                                    MediaData mediaData3 = (MediaData) mediaDataManager2.mediaEntries.get(str4);
                                    if (mediaData3 != null) {
                                        mediaData3.resumeAction = mediaResumeListener$getResumeAction$1;
                                        mediaData3.hasCheckedForResume = true;
                                    }
                                    ConcurrentLinkedQueue concurrentLinkedQueue = mediaResumeListener2.resumeComponents;
                                    Iterator it = concurrentLinkedQueue.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            obj2 = it.next();
                                            if (((ComponentName) ((Pair) obj2).getFirst()).equals(componentName3)) {
                                                break;
                                            }
                                        } else {
                                            obj2 = null;
                                            break;
                                        }
                                    }
                                    concurrentLinkedQueue.remove(obj2);
                                    ((SystemClockImpl) mediaResumeListener2.systemClock).getClass();
                                    concurrentLinkedQueue.add(new Pair(componentName3, Long.valueOf(System.currentTimeMillis())));
                                    if (concurrentLinkedQueue.size() > 5) {
                                        concurrentLinkedQueue.remove();
                                    }
                                    mediaResumeListener2.writeSharedPrefs();
                                    mediaResumeListener2.setMediaBrowser(null);
                                }

                                @Override // com.android.systemui.media.controls.resume.ResumeMediaBrowser.Callback
                                public final void onConnected() {
                                    Log.d("MediaResumeListener", "Connected to " + componentName);
                                }

                                @Override // com.android.systemui.media.controls.resume.ResumeMediaBrowser.Callback
                                public final void onError() {
                                    Log.e("MediaResumeListener", "Cannot resume with " + componentName);
                                    mediaResumeListener.setMediaBrowser(null);
                                }
                            };
                            int i2 = mediaResumeListener.currentUserId;
                            ResumeMediaBrowserFactory resumeMediaBrowserFactory = mediaResumeListener.mediaBrowserFactory;
                            mediaResumeListener.setMediaBrowser(new ResumeMediaBrowser(resumeMediaBrowserFactory.mContext, callback, componentName, resumeMediaBrowserFactory.mBrowserFactory, resumeMediaBrowserFactory.mLogger, i2));
                            ResumeMediaBrowser resumeMediaBrowser = mediaResumeListener.mediaBrowser;
                            if (resumeMediaBrowser != null) {
                                Bundle bundle = new Bundle();
                                bundle.putBoolean("android.service.media.extra.RECENT", true);
                                MediaBrowserFactory mediaBrowserFactory = resumeMediaBrowser.mBrowserFactory;
                                mediaBrowserFactory.getClass();
                                resumeMediaBrowser.connectBrowser(new MediaBrowser(mediaBrowserFactory.mContext, resumeMediaBrowser.mComponentName, resumeMediaBrowser.mConnectionCallback, bundle), "testConnection");
                            }
                        }
                    });
                }
            }
        }
    }

    public final void setMediaBrowser(ResumeMediaBrowser resumeMediaBrowser) {
        ResumeMediaBrowser resumeMediaBrowser2 = this.mediaBrowser;
        if (resumeMediaBrowser2 != null) {
            resumeMediaBrowser2.disconnect();
        }
        this.mediaBrowser = resumeMediaBrowser;
    }

    public final void writeSharedPrefs() {
        StringBuilder sb = new StringBuilder();
        for (Pair pair : this.resumeComponents) {
            sb.append(((ComponentName) pair.getFirst()).flattenToString());
            sb.append("/");
            sb.append(((Number) pair.getSecond()).longValue());
            sb.append(":");
        }
        this.context.getSharedPreferences("media_control_prefs", 0).edit().putString(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("browser_components_", this.currentUserId), sb.toString()).apply();
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onMediaDataRemoved(String str) {
    }

    public static /* synthetic */ void getUserUnlockReceiver$annotations() {
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onSmartspaceMediaDataLoaded(String str, SmartspaceMediaData smartspaceMediaData) {
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onSmartspaceMediaDataRemoved(String str, boolean z) {
    }
}
