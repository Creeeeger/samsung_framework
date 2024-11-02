package com.android.systemui.media.controls.pipeline;

import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.CarrierTextManagerLogger$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import com.android.systemui.media.controls.models.player.MediaData;
import com.android.systemui.media.controls.models.recommendation.SmartspaceMediaData;
import com.android.systemui.media.controls.pipeline.MediaDataManager;
import com.android.systemui.media.controls.pipeline.MediaTimeoutListener;
import com.android.systemui.media.controls.util.MediaControllerFactory;
import com.android.systemui.media.controls.util.MediaFlags;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.NotificationMediaManager;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutorImpl;
import com.android.systemui.util.time.SystemClock;
import com.android.systemui.util.time.SystemClockImpl;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaTimeoutListener implements MediaDataManager.Listener {
    public final MediaTimeoutLogger logger;
    public final DelayableExecutor mainExecutor;
    public final MediaControllerFactory mediaControllerFactory;
    public final MediaFlags mediaFlags;
    public final Map mediaListeners = new LinkedHashMap();
    public final Map recommendationListeners = new LinkedHashMap();
    public Function1 sessionCallback;
    public Function2 stateCallback;
    public final SystemClock systemClock;
    public Function2 timeoutCallback;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class PlaybackStateListener extends MediaController.Callback {
        public ExecutorImpl.ExecutionToken cancellation;
        public boolean destroyed;
        public long expiration = Long.MAX_VALUE;
        public String key;
        public PlaybackState lastState;
        public MediaController mediaController;
        public Boolean resumption;
        public boolean timedOut;

        public PlaybackStateListener(String str, MediaData mediaData) {
            this.key = str;
            setMediaData(mediaData);
        }

        public final void doTimeout() {
            Function2 function2 = null;
            this.cancellation = null;
            MediaTimeoutLogger mediaTimeoutLogger = MediaTimeoutListener.this.logger;
            String str = this.key;
            mediaTimeoutLogger.getClass();
            LogLevel logLevel = LogLevel.DEBUG;
            MediaTimeoutLogger$logTimeout$2 mediaTimeoutLogger$logTimeout$2 = MediaTimeoutLogger$logTimeout$2.INSTANCE;
            LogBuffer logBuffer = mediaTimeoutLogger.buffer;
            LogMessage obtain = logBuffer.obtain("MediaTimeout", logLevel, mediaTimeoutLogger$logTimeout$2, null);
            obtain.setStr1(str);
            logBuffer.commit(obtain);
            this.timedOut = true;
            this.expiration = Long.MAX_VALUE;
            Function2 function22 = MediaTimeoutListener.this.timeoutCallback;
            if (function22 != null) {
                function2 = function22;
            }
            function2.invoke(this.key, true);
        }

        public final void expireMediaTimeout(String str, String str2) {
            ExecutorImpl.ExecutionToken executionToken = this.cancellation;
            if (executionToken != null) {
                MediaTimeoutLogger mediaTimeoutLogger = MediaTimeoutListener.this.logger;
                mediaTimeoutLogger.getClass();
                LogLevel logLevel = LogLevel.VERBOSE;
                MediaTimeoutLogger$logTimeoutCancelled$2 mediaTimeoutLogger$logTimeoutCancelled$2 = MediaTimeoutLogger$logTimeoutCancelled$2.INSTANCE;
                LogBuffer logBuffer = mediaTimeoutLogger.buffer;
                LogMessage obtain = logBuffer.obtain("MediaTimeout", logLevel, mediaTimeoutLogger$logTimeoutCancelled$2, null);
                CarrierTextManagerLogger$$ExternalSyntheticOutline0.m(obtain, str, str2, logBuffer, obtain);
                executionToken.run();
            }
            this.expiration = Long.MAX_VALUE;
            this.cancellation = null;
        }

        public final boolean isPlaying$1() {
            PlaybackState playbackState = this.lastState;
            if (playbackState != null) {
                return NotificationMediaManager.isPlayingState(playbackState.getState());
            }
            return false;
        }

        @Override // android.media.session.MediaController.Callback
        public final void onPlaybackStateChanged(PlaybackState playbackState) {
            processState(playbackState, true, this.resumption);
        }

        @Override // android.media.session.MediaController.Callback
        public final void onSessionDestroyed() {
            MediaTimeoutLogger mediaTimeoutLogger = MediaTimeoutListener.this.logger;
            String str = this.key;
            mediaTimeoutLogger.getClass();
            LogLevel logLevel = LogLevel.DEBUG;
            MediaTimeoutLogger$logSessionDestroyed$2 mediaTimeoutLogger$logSessionDestroyed$2 = new Function1() { // from class: com.android.systemui.media.controls.pipeline.MediaTimeoutLogger$logSessionDestroyed$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return KeyAttributes$$ExternalSyntheticOutline0.m("session destroyed ", ((LogMessage) obj).getStr1());
                }
            };
            LogBuffer logBuffer = mediaTimeoutLogger.buffer;
            Function1 function1 = null;
            LogMessage obtain = logBuffer.obtain("MediaTimeout", logLevel, mediaTimeoutLogger$logSessionDestroyed$2, null);
            obtain.setStr1(str);
            logBuffer.commit(obtain);
            if (Intrinsics.areEqual(this.resumption, Boolean.TRUE)) {
                MediaController mediaController = this.mediaController;
                if (mediaController != null) {
                    mediaController.unregisterCallback(this);
                    return;
                }
                return;
            }
            Function1 function12 = MediaTimeoutListener.this.sessionCallback;
            if (function12 != null) {
                function1 = function12;
            }
            function1.invoke(this.key);
            MediaController mediaController2 = this.mediaController;
            if (mediaController2 != null) {
                mediaController2.unregisterCallback(this);
            }
            ExecutorImpl.ExecutionToken executionToken = this.cancellation;
            if (executionToken != null) {
                executionToken.run();
            }
            this.destroyed = true;
        }

        /* JADX WARN: Removed duplicated region for block: B:56:0x012b A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:57:? A[LOOP:0: B:28:0x009a->B:57:?, LOOP_END, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:65:0x012e  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x017a  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0208  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x0165  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void processState(android.media.session.PlaybackState r13, boolean r14, java.lang.Boolean r15) {
            /*
                Method dump skipped, instructions count: 567
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.controls.pipeline.MediaTimeoutListener.PlaybackStateListener.processState(android.media.session.PlaybackState, boolean, java.lang.Boolean):void");
        }

        public final void setMediaData(MediaData mediaData) {
            MediaController mediaController;
            this.destroyed = false;
            MediaController mediaController2 = this.mediaController;
            if (mediaController2 != null) {
                mediaController2.unregisterCallback(this);
            }
            MediaSession.Token token = mediaData.token;
            PlaybackState playbackState = null;
            if (token != null) {
                MediaControllerFactory mediaControllerFactory = MediaTimeoutListener.this.mediaControllerFactory;
                mediaControllerFactory.getClass();
                mediaController = new MediaController(mediaControllerFactory.mContext, token);
            } else {
                mediaController = null;
            }
            this.mediaController = mediaController;
            if (mediaController != null) {
                mediaController.registerCallback(this);
            }
            MediaController mediaController3 = this.mediaController;
            if (mediaController3 != null) {
                playbackState = mediaController3.getPlaybackState();
            }
            processState(playbackState, false, Boolean.valueOf(mediaData.resumption));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class RecommendationListener {
        public ExecutorImpl.ExecutionToken cancellation;
        public long expiration;
        public final String key;
        public SmartspaceMediaData recommendationData;
        public boolean timedOut;

        public RecommendationListener(String str, SmartspaceMediaData smartspaceMediaData) {
            this.key = str;
            this.expiration = Long.MAX_VALUE;
            this.recommendationData = smartspaceMediaData;
            long j = smartspaceMediaData.expiryTimeMs;
            if (j != Long.MAX_VALUE) {
                long j2 = j - smartspaceMediaData.headphoneConnectionTimeMillis;
                MediaTimeoutLogger mediaTimeoutLogger = MediaTimeoutListener.this.logger;
                mediaTimeoutLogger.getClass();
                LogLevel logLevel = LogLevel.VERBOSE;
                MediaTimeoutLogger$logRecommendationTimeoutScheduled$2 mediaTimeoutLogger$logRecommendationTimeoutScheduled$2 = new Function1() { // from class: com.android.systemui.media.controls.pipeline.MediaTimeoutLogger$logRecommendationTimeoutScheduled$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        LogMessage logMessage = (LogMessage) obj;
                        return "recommendation timeout scheduled for " + logMessage.getStr1() + " in " + logMessage.getLong1() + " ms";
                    }
                };
                LogBuffer logBuffer = mediaTimeoutLogger.buffer;
                LogMessage obtain = logBuffer.obtain("MediaTimeout", logLevel, mediaTimeoutLogger$logRecommendationTimeoutScheduled$2, null);
                obtain.setStr1(str);
                obtain.setLong1(j2);
                logBuffer.commit(obtain);
                ExecutorImpl.ExecutionToken executionToken = this.cancellation;
                if (executionToken != null) {
                    executionToken.run();
                }
                this.cancellation = MediaTimeoutListener.this.mainExecutor.executeDelayed(j2, new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaTimeoutListener$RecommendationListener$processUpdate$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaTimeoutListener.RecommendationListener.this.doTimeout();
                    }
                });
                this.expiration = this.recommendationData.expiryTimeMs;
            }
        }

        public final void doTimeout() {
            ExecutorImpl.ExecutionToken executionToken = this.cancellation;
            if (executionToken != null) {
                executionToken.run();
            }
            Function2 function2 = null;
            this.cancellation = null;
            MediaTimeoutListener mediaTimeoutListener = MediaTimeoutListener.this;
            MediaTimeoutLogger mediaTimeoutLogger = mediaTimeoutListener.logger;
            mediaTimeoutLogger.getClass();
            LogLevel logLevel = LogLevel.DEBUG;
            MediaTimeoutLogger$logTimeout$2 mediaTimeoutLogger$logTimeout$2 = MediaTimeoutLogger$logTimeout$2.INSTANCE;
            LogBuffer logBuffer = mediaTimeoutLogger.buffer;
            LogMessage obtain = logBuffer.obtain("MediaTimeout", logLevel, mediaTimeoutLogger$logTimeout$2, null);
            String str = this.key;
            obtain.setStr1(str);
            logBuffer.commit(obtain);
            this.timedOut = true;
            this.expiration = Long.MAX_VALUE;
            Function2 function22 = mediaTimeoutListener.timeoutCallback;
            if (function22 != null) {
                function2 = function22;
            }
            function2.invoke(str, true);
        }
    }

    public MediaTimeoutListener(MediaControllerFactory mediaControllerFactory, DelayableExecutor delayableExecutor, MediaTimeoutLogger mediaTimeoutLogger, SysuiStatusBarStateController sysuiStatusBarStateController, SystemClock systemClock, MediaFlags mediaFlags) {
        this.mediaControllerFactory = mediaControllerFactory;
        this.mainExecutor = delayableExecutor;
        this.logger = mediaTimeoutLogger;
        this.systemClock = systemClock;
        this.mediaFlags = mediaFlags;
        ((StatusBarStateControllerImpl) sysuiStatusBarStateController).addCallback(new StatusBarStateController.StateListener() { // from class: com.android.systemui.media.controls.pipeline.MediaTimeoutListener.1
            @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
            public final void onDozingChanged(boolean z) {
                SystemClock systemClock2;
                if (!z) {
                    MediaTimeoutListener mediaTimeoutListener = MediaTimeoutListener.this;
                    Iterator it = ((LinkedHashMap) mediaTimeoutListener.mediaListeners).entrySet().iterator();
                    while (true) {
                        boolean hasNext = it.hasNext();
                        systemClock2 = mediaTimeoutListener.systemClock;
                        if (!hasNext) {
                            break;
                        }
                        Map.Entry entry = (Map.Entry) it.next();
                        String str = (String) entry.getKey();
                        PlaybackStateListener playbackStateListener = (PlaybackStateListener) entry.getValue();
                        if (playbackStateListener.cancellation != null) {
                            long j = playbackStateListener.expiration;
                            ((SystemClockImpl) systemClock2).getClass();
                            if (j <= android.os.SystemClock.elapsedRealtime()) {
                                playbackStateListener.expireMediaTimeout(str, "timeout happened while dozing");
                                playbackStateListener.doTimeout();
                            }
                        }
                    }
                    for (Map.Entry entry2 : ((LinkedHashMap) mediaTimeoutListener.recommendationListeners).entrySet()) {
                        String str2 = (String) entry2.getKey();
                        RecommendationListener recommendationListener = (RecommendationListener) entry2.getValue();
                        if (recommendationListener.cancellation != null) {
                            long j2 = recommendationListener.expiration;
                            ((SystemClockImpl) systemClock2).getClass();
                            if (j2 <= System.currentTimeMillis()) {
                                MediaTimeoutLogger mediaTimeoutLogger2 = mediaTimeoutListener.logger;
                                mediaTimeoutLogger2.getClass();
                                LogLevel logLevel = LogLevel.VERBOSE;
                                MediaTimeoutLogger$logTimeoutCancelled$2 mediaTimeoutLogger$logTimeoutCancelled$2 = MediaTimeoutLogger$logTimeoutCancelled$2.INSTANCE;
                                LogBuffer logBuffer = mediaTimeoutLogger2.buffer;
                                LogMessage obtain = logBuffer.obtain("MediaTimeout", logLevel, mediaTimeoutLogger$logTimeoutCancelled$2, null);
                                CarrierTextManagerLogger$$ExternalSyntheticOutline0.m(obtain, str2, "Timed out while dozing", logBuffer, obtain);
                                recommendationListener.doTimeout();
                            }
                        }
                    }
                }
            }
        });
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onMediaDataLoaded(final String str, String str2, MediaData mediaData, boolean z, int i, boolean z2) {
        Object obj;
        boolean z3;
        Map map = this.mediaListeners;
        PlaybackStateListener playbackStateListener = (PlaybackStateListener) ((LinkedHashMap) map).get(str);
        MediaTimeoutLogger mediaTimeoutLogger = this.logger;
        if (playbackStateListener != null) {
            if (!playbackStateListener.destroyed) {
                return;
            }
            mediaTimeoutLogger.getClass();
            LogLevel logLevel = LogLevel.DEBUG;
            MediaTimeoutLogger$logReuseListener$2 mediaTimeoutLogger$logReuseListener$2 = new Function1() { // from class: com.android.systemui.media.controls.pipeline.MediaTimeoutLogger$logReuseListener$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return KeyAttributes$$ExternalSyntheticOutline0.m("reuse listener: ", ((LogMessage) obj2).getStr1());
                }
            };
            LogBuffer logBuffer = mediaTimeoutLogger.buffer;
            LogMessage obtain = logBuffer.obtain("MediaTimeout", logLevel, mediaTimeoutLogger$logReuseListener$2, null);
            obtain.setStr1(str);
            logBuffer.commit(obtain);
            obj = playbackStateListener;
        } else {
            obj = null;
        }
        boolean z4 = true;
        if (str2 != null && !Intrinsics.areEqual(str, str2)) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3) {
            obj = TypeIntrinsics.asMutableMap(map).remove(str2);
            if (obj == null) {
                z4 = false;
            }
            mediaTimeoutLogger.getClass();
            LogLevel logLevel2 = LogLevel.DEBUG;
            MediaTimeoutLogger$logMigrateListener$2 mediaTimeoutLogger$logMigrateListener$2 = new Function1() { // from class: com.android.systemui.media.controls.pipeline.MediaTimeoutLogger$logMigrateListener$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    LogMessage logMessage = (LogMessage) obj2;
                    String str1 = logMessage.getStr1();
                    String str22 = logMessage.getStr2();
                    boolean bool1 = logMessage.getBool1();
                    StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("migrate from ", str1, " to ", str22, ", had listener? ");
                    m.append(bool1);
                    return m.toString();
                }
            };
            LogBuffer logBuffer2 = mediaTimeoutLogger.buffer;
            LogMessage obtain2 = logBuffer2.obtain("MediaTimeout", logLevel2, mediaTimeoutLogger$logMigrateListener$2, null);
            obtain2.setStr1(str2);
            obtain2.setStr2(str);
            obtain2.setBool1(z4);
            logBuffer2.commit(obtain2);
        }
        PlaybackStateListener playbackStateListener2 = (PlaybackStateListener) obj;
        if (playbackStateListener2 != null) {
            boolean isPlaying$1 = playbackStateListener2.isPlaying$1();
            mediaTimeoutLogger.getClass();
            LogLevel logLevel3 = LogLevel.DEBUG;
            MediaTimeoutLogger$logUpdateListener$2 mediaTimeoutLogger$logUpdateListener$2 = new Function1() { // from class: com.android.systemui.media.controls.pipeline.MediaTimeoutLogger$logUpdateListener$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    LogMessage logMessage = (LogMessage) obj2;
                    return "updating " + logMessage.getStr1() + ", was playing? " + logMessage.getBool1();
                }
            };
            LogBuffer logBuffer3 = mediaTimeoutLogger.buffer;
            LogMessage obtain3 = logBuffer3.obtain("MediaTimeout", logLevel3, mediaTimeoutLogger$logUpdateListener$2, null);
            obtain3.setStr1(str);
            obtain3.setBool1(isPlaying$1);
            logBuffer3.commit(obtain3);
            playbackStateListener2.setMediaData(mediaData);
            playbackStateListener2.key = str;
            map.put(str, playbackStateListener2);
            if (isPlaying$1 != playbackStateListener2.isPlaying$1()) {
                ((ExecutorImpl) this.mainExecutor).execute(new Runnable() { // from class: com.android.systemui.media.controls.pipeline.MediaTimeoutListener$onMediaDataLoaded$2$1
                    /* JADX WARN: Code restructure failed: missing block: B:4:0x0015, code lost:
                    
                        if (r0.isPlaying$1() == true) goto L8;
                     */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public final void run() {
                        /*
                            r6 = this;
                            com.android.systemui.media.controls.pipeline.MediaTimeoutListener r0 = com.android.systemui.media.controls.pipeline.MediaTimeoutListener.this
                            java.util.Map r0 = r0.mediaListeners
                            java.lang.String r1 = r2
                            java.util.LinkedHashMap r0 = (java.util.LinkedHashMap) r0
                            java.lang.Object r0 = r0.get(r1)
                            com.android.systemui.media.controls.pipeline.MediaTimeoutListener$PlaybackStateListener r0 = (com.android.systemui.media.controls.pipeline.MediaTimeoutListener.PlaybackStateListener) r0
                            if (r0 == 0) goto L18
                            boolean r0 = r0.isPlaying$1()
                            r1 = 1
                            if (r0 != r1) goto L18
                            goto L19
                        L18:
                            r1 = 0
                        L19:
                            if (r1 == 0) goto L45
                            com.android.systemui.media.controls.pipeline.MediaTimeoutListener r0 = com.android.systemui.media.controls.pipeline.MediaTimeoutListener.this
                            com.android.systemui.media.controls.pipeline.MediaTimeoutLogger r0 = r0.logger
                            java.lang.String r1 = r2
                            r0.getClass()
                            com.android.systemui.log.LogLevel r2 = com.android.systemui.log.LogLevel.DEBUG
                            com.android.systemui.media.controls.pipeline.MediaTimeoutLogger$logDelayedUpdate$2 r3 = new kotlin.jvm.functions.Function1() { // from class: com.android.systemui.media.controls.pipeline.MediaTimeoutLogger$logDelayedUpdate$2
                                static {
                                    /*
                                        com.android.systemui.media.controls.pipeline.MediaTimeoutLogger$logDelayedUpdate$2 r0 = new com.android.systemui.media.controls.pipeline.MediaTimeoutLogger$logDelayedUpdate$2
                                        r0.<init>()
                                        
                                        // error: 0x0005: SPUT (r0 I:com.android.systemui.media.controls.pipeline.MediaTimeoutLogger$logDelayedUpdate$2) com.android.systemui.media.controls.pipeline.MediaTimeoutLogger$logDelayedUpdate$2.INSTANCE com.android.systemui.media.controls.pipeline.MediaTimeoutLogger$logDelayedUpdate$2
                                        return
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.controls.pipeline.MediaTimeoutLogger$logDelayedUpdate$2.<clinit>():void");
                                }

                                {
                                    /*
                                        r1 = this;
                                        r0 = 1
                                        r1.<init>(r0)
                                        return
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.controls.pipeline.MediaTimeoutLogger$logDelayedUpdate$2.<init>():void");
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final java.lang.Object invoke(java.lang.Object r1) {
                                    /*
                                        r0 = this;
                                        com.android.systemui.log.LogMessage r1 = (com.android.systemui.log.LogMessage) r1
                                        java.lang.String r0 = r1.getStr1()
                                        java.lang.String r1 = "deliver delayed playback state for "
                                        java.lang.String r0 = androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0.m(r1, r0)
                                        return r0
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.controls.pipeline.MediaTimeoutLogger$logDelayedUpdate$2.invoke(java.lang.Object):java.lang.Object");
                                }
                            }
                            com.android.systemui.log.LogBuffer r0 = r0.buffer
                            java.lang.String r4 = "MediaTimeout"
                            r5 = 0
                            com.android.systemui.log.LogMessage r2 = r0.obtain(r4, r2, r3, r5)
                            r2.setStr1(r1)
                            r0.commit(r2)
                            com.android.systemui.media.controls.pipeline.MediaTimeoutListener r0 = com.android.systemui.media.controls.pipeline.MediaTimeoutListener.this
                            kotlin.jvm.functions.Function2 r0 = r0.timeoutCallback
                            if (r0 == 0) goto L3e
                            r5 = r0
                        L3e:
                            java.lang.String r6 = r2
                            java.lang.Boolean r0 = java.lang.Boolean.FALSE
                            r5.invoke(r6, r0)
                        L45:
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.media.controls.pipeline.MediaTimeoutListener$onMediaDataLoaded$2$1.run():void");
                    }
                });
                return;
            }
            return;
        }
        map.put(str, new PlaybackStateListener(str, mediaData));
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onMediaDataRemoved(String str) {
        PlaybackStateListener playbackStateListener = (PlaybackStateListener) this.mediaListeners.remove(str);
        if (playbackStateListener != null) {
            MediaController mediaController = playbackStateListener.mediaController;
            if (mediaController != null) {
                mediaController.unregisterCallback(playbackStateListener);
            }
            ExecutorImpl.ExecutionToken executionToken = playbackStateListener.cancellation;
            if (executionToken != null) {
                executionToken.run();
            }
            playbackStateListener.destroyed = true;
        }
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onSmartspaceMediaDataLoaded(String str, SmartspaceMediaData smartspaceMediaData) {
        this.mediaFlags.isPersistentSsCardEnabled();
    }

    @Override // com.android.systemui.media.controls.pipeline.MediaDataManager.Listener
    public final void onSmartspaceMediaDataRemoved(String str, boolean z) {
        this.mediaFlags.isPersistentSsCardEnabled();
    }
}
