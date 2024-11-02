package android.media.tv.interactive;

import android.graphics.Rect;
import android.media.PlaybackParams;
import android.media.tv.AdBuffer;
import android.media.tv.AdRequest;
import android.media.tv.AdResponse;
import android.media.tv.BroadcastInfoRequest;
import android.media.tv.BroadcastInfoResponse;
import android.media.tv.TvContentRating;
import android.media.tv.TvInputManager;
import android.media.tv.TvRecordingInfo;
import android.media.tv.TvTrackInfo;
import android.media.tv.interactive.ITvInteractiveAppClient;
import android.media.tv.interactive.ITvInteractiveAppManagerCallback;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pools;
import android.util.SparseArray;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventSender;
import android.view.Surface;
import android.view.View;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class TvInteractiveAppManager {
    public static final String ACTION_APP_LINK_COMMAND = "android.media.tv.interactive.action.APP_LINK_COMMAND";
    public static final String APP_LINK_KEY_BACK_URI = "back_uri";
    public static final String APP_LINK_KEY_CLASS_NAME = "class_name";
    public static final String APP_LINK_KEY_COMMAND_TYPE = "command_type";
    public static final String APP_LINK_KEY_PACKAGE_NAME = "package_name";
    public static final String APP_LINK_KEY_SERVICE_ID = "service_id";
    public static final int ERROR_BLOCKED = 5;
    public static final int ERROR_ENCRYPTED = 6;
    public static final int ERROR_NONE = 0;
    public static final int ERROR_NOT_SUPPORTED = 2;
    public static final int ERROR_RESOURCE_UNAVAILABLE = 4;
    public static final int ERROR_UNKNOWN = 1;
    public static final int ERROR_UNKNOWN_CHANNEL = 7;
    public static final int ERROR_WEAK_SIGNAL = 3;
    public static final String INTENT_KEY_BI_INTERACTIVE_APP_TYPE = "bi_interactive_app_type";
    public static final String INTENT_KEY_BI_INTERACTIVE_APP_URI = "bi_interactive_app_uri";
    public static final String INTENT_KEY_CHANNEL_URI = "channel_uri";
    public static final String INTENT_KEY_COMMAND_TYPE = "command_type";
    public static final String INTENT_KEY_INTERACTIVE_APP_SERVICE_ID = "interactive_app_id";
    public static final String INTENT_KEY_TV_INPUT_ID = "tv_input_id";
    public static final int INTERACTIVE_APP_STATE_ERROR = 3;
    public static final int INTERACTIVE_APP_STATE_RUNNING = 2;
    public static final int INTERACTIVE_APP_STATE_STOPPED = 1;
    public static final int SERVICE_STATE_ERROR = 4;
    public static final int SERVICE_STATE_PREPARING = 2;
    public static final int SERVICE_STATE_READY = 3;
    public static final int SERVICE_STATE_UNREALIZED = 1;
    private static final String TAG = "TvInteractiveAppManager";
    public static final int TELETEXT_APP_STATE_ERROR = 3;
    public static final int TELETEXT_APP_STATE_HIDE = 2;
    public static final int TELETEXT_APP_STATE_SHOW = 1;
    private int mNextSeq;
    private final ITvInteractiveAppManager mService;
    private final int mUserId;
    private final SparseArray<SessionCallbackRecord> mSessionCallbackRecordMap = new SparseArray<>();
    private final List<TvInteractiveAppCallbackRecord> mCallbackRecords = new ArrayList();
    private final Object mLock = new Object();
    private final ITvInteractiveAppClient mClient = new ITvInteractiveAppClient.Stub() { // from class: android.media.tv.interactive.TvInteractiveAppManager.1
        AnonymousClass1() {
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onSessionCreated(String iAppServiceId, IBinder token, InputChannel channel, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for " + token);
                    return;
                }
                Session session = null;
                if (token != null) {
                    session = new Session(token, channel, TvInteractiveAppManager.this.mService, TvInteractiveAppManager.this.mUserId, seq, TvInteractiveAppManager.this.mSessionCallbackRecordMap);
                } else {
                    TvInteractiveAppManager.this.mSessionCallbackRecordMap.delete(seq);
                }
                record.postSessionCreated(session);
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onSessionReleased(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                TvInteractiveAppManager.this.mSessionCallbackRecordMap.delete(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq:" + seq);
                } else {
                    record.mSession.releaseInternal();
                    record.postSessionReleased();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onLayoutSurface(int left, int top, int right, int bottom, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postLayoutSurface(left, top, right, bottom);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onBroadcastInfoRequest(BroadcastInfoRequest request, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postBroadcastInfoRequest(request);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRemoveBroadcastInfo(int requestId, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRemoveBroadcastInfo(requestId);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onCommandRequest(String cmdType, Bundle parameters, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postCommandRequest(cmdType, parameters);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onTimeShiftCommandRequest(String cmdType, Bundle parameters, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postTimeShiftCommandRequest(cmdType, parameters);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onSetVideoBounds(Rect rect, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postSetVideoBounds(rect);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onAdRequest(AdRequest request, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postAdRequest(request);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestCurrentVideoBounds(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestCurrentVideoBounds();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestCurrentChannelUri(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestCurrentChannelUri();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestCurrentChannelLcn(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestCurrentChannelLcn();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestStreamVolume(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestStreamVolume();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestTrackInfoList(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestTrackInfoList();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestCurrentTvInputId(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestCurrentTvInputId();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestTimeShiftMode(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestTimeShiftMode();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestAvailableSpeeds(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestAvailableSpeeds();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestStartRecording(String requestId, Uri programUri, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestStartRecording(requestId, programUri);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestStopRecording(String recordingId, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestStopRecording(recordingId);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestScheduleRecording(String requestId, String inputId, Uri channelUri, Uri programUri, Bundle params, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestScheduleRecording(requestId, inputId, channelUri, programUri, params);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestScheduleRecording2(String requestId, String inputId, Uri channelUri, long startTime, long duration, int repeatDays, Bundle params, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestScheduleRecording(requestId, inputId, channelUri, startTime, duration, repeatDays, params);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onSetTvRecordingInfo(String recordingId, TvRecordingInfo recordingInfo, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postSetTvRecordingInfo(recordingId, recordingInfo);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestTvRecordingInfo(String recordingId, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestTvRecordingInfo(recordingId);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestTvRecordingInfoList(int type, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestTvRecordingInfoList(type);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestSigning(String id, String algorithm, String alias, byte[] data, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestSigning(id, algorithm, alias, data);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onSessionStateChanged(int state, int err, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postSessionStateChanged(state, err);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onBiInteractiveAppCreated(Uri biIAppUri, String biIAppId, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postBiInteractiveAppCreated(biIAppUri, biIAppId);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onTeletextAppStateChanged(int state, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postTeletextAppStateChanged(state);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onAdBufferReady(AdBuffer buffer, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postAdBufferReady(buffer);
                }
            }
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface ErrorCode {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface InteractiveAppState {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface ServiceState {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface TeletextAppState {
    }

    public TvInteractiveAppManager(ITvInteractiveAppManager service, int userId) {
        this.mService = service;
        this.mUserId = userId;
        ITvInteractiveAppManagerCallback managerCallback = new ITvInteractiveAppManagerCallback.Stub() { // from class: android.media.tv.interactive.TvInteractiveAppManager.2
            AnonymousClass2() {
            }

            @Override // android.media.tv.interactive.ITvInteractiveAppManagerCallback
            public void onInteractiveAppServiceAdded(String iAppServiceId) {
                synchronized (TvInteractiveAppManager.this.mLock) {
                    for (TvInteractiveAppCallbackRecord record : TvInteractiveAppManager.this.mCallbackRecords) {
                        record.postInteractiveAppServiceAdded(iAppServiceId);
                    }
                }
            }

            @Override // android.media.tv.interactive.ITvInteractiveAppManagerCallback
            public void onInteractiveAppServiceRemoved(String iAppServiceId) {
                synchronized (TvInteractiveAppManager.this.mLock) {
                    for (TvInteractiveAppCallbackRecord record : TvInteractiveAppManager.this.mCallbackRecords) {
                        record.postInteractiveAppServiceRemoved(iAppServiceId);
                    }
                }
            }

            @Override // android.media.tv.interactive.ITvInteractiveAppManagerCallback
            public void onInteractiveAppServiceUpdated(String iAppServiceId) {
                synchronized (TvInteractiveAppManager.this.mLock) {
                    for (TvInteractiveAppCallbackRecord record : TvInteractiveAppManager.this.mCallbackRecords) {
                        record.postInteractiveAppServiceUpdated(iAppServiceId);
                    }
                }
            }

            @Override // android.media.tv.interactive.ITvInteractiveAppManagerCallback
            public void onTvInteractiveAppServiceInfoUpdated(TvInteractiveAppServiceInfo iAppInfo) {
                synchronized (TvInteractiveAppManager.this.mLock) {
                    for (TvInteractiveAppCallbackRecord record : TvInteractiveAppManager.this.mCallbackRecords) {
                        record.postTvInteractiveAppServiceInfoUpdated(iAppInfo);
                    }
                }
            }

            @Override // android.media.tv.interactive.ITvInteractiveAppManagerCallback
            public void onStateChanged(String iAppServiceId, int type, int state, int err) {
                synchronized (TvInteractiveAppManager.this.mLock) {
                    for (TvInteractiveAppCallbackRecord record : TvInteractiveAppManager.this.mCallbackRecords) {
                        record.postStateChanged(iAppServiceId, type, state, err);
                    }
                }
            }
        };
        if (service != null) {
            try {
                service.registerCallback(managerCallback, userId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$1 */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 extends ITvInteractiveAppClient.Stub {
        AnonymousClass1() {
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onSessionCreated(String iAppServiceId, IBinder token, InputChannel channel, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for " + token);
                    return;
                }
                Session session = null;
                if (token != null) {
                    session = new Session(token, channel, TvInteractiveAppManager.this.mService, TvInteractiveAppManager.this.mUserId, seq, TvInteractiveAppManager.this.mSessionCallbackRecordMap);
                } else {
                    TvInteractiveAppManager.this.mSessionCallbackRecordMap.delete(seq);
                }
                record.postSessionCreated(session);
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onSessionReleased(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                TvInteractiveAppManager.this.mSessionCallbackRecordMap.delete(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq:" + seq);
                } else {
                    record.mSession.releaseInternal();
                    record.postSessionReleased();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onLayoutSurface(int left, int top, int right, int bottom, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postLayoutSurface(left, top, right, bottom);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onBroadcastInfoRequest(BroadcastInfoRequest request, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postBroadcastInfoRequest(request);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRemoveBroadcastInfo(int requestId, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRemoveBroadcastInfo(requestId);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onCommandRequest(String cmdType, Bundle parameters, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postCommandRequest(cmdType, parameters);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onTimeShiftCommandRequest(String cmdType, Bundle parameters, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postTimeShiftCommandRequest(cmdType, parameters);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onSetVideoBounds(Rect rect, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postSetVideoBounds(rect);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onAdRequest(AdRequest request, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postAdRequest(request);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestCurrentVideoBounds(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestCurrentVideoBounds();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestCurrentChannelUri(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestCurrentChannelUri();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestCurrentChannelLcn(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestCurrentChannelLcn();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestStreamVolume(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestStreamVolume();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestTrackInfoList(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestTrackInfoList();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestCurrentTvInputId(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestCurrentTvInputId();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestTimeShiftMode(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestTimeShiftMode();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestAvailableSpeeds(int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestAvailableSpeeds();
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestStartRecording(String requestId, Uri programUri, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestStartRecording(requestId, programUri);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestStopRecording(String recordingId, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestStopRecording(recordingId);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestScheduleRecording(String requestId, String inputId, Uri channelUri, Uri programUri, Bundle params, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestScheduleRecording(requestId, inputId, channelUri, programUri, params);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestScheduleRecording2(String requestId, String inputId, Uri channelUri, long startTime, long duration, int repeatDays, Bundle params, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestScheduleRecording(requestId, inputId, channelUri, startTime, duration, repeatDays, params);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onSetTvRecordingInfo(String recordingId, TvRecordingInfo recordingInfo, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postSetTvRecordingInfo(recordingId, recordingInfo);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestTvRecordingInfo(String recordingId, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestTvRecordingInfo(recordingId);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestTvRecordingInfoList(int type, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestTvRecordingInfoList(type);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onRequestSigning(String id, String algorithm, String alias, byte[] data, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postRequestSigning(id, algorithm, alias, data);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onSessionStateChanged(int state, int err, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postSessionStateChanged(state, err);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onBiInteractiveAppCreated(Uri biIAppUri, String biIAppId, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postBiInteractiveAppCreated(biIAppUri, biIAppId);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onTeletextAppStateChanged(int state, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postTeletextAppStateChanged(state);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppClient
        public void onAdBufferReady(AdBuffer buffer, int seq) {
            synchronized (TvInteractiveAppManager.this.mSessionCallbackRecordMap) {
                SessionCallbackRecord record = (SessionCallbackRecord) TvInteractiveAppManager.this.mSessionCallbackRecordMap.get(seq);
                if (record == null) {
                    Log.e(TvInteractiveAppManager.TAG, "Callback not found for seq " + seq);
                } else {
                    record.postAdBufferReady(buffer);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$2 */
    /* loaded from: classes2.dex */
    public class AnonymousClass2 extends ITvInteractiveAppManagerCallback.Stub {
        AnonymousClass2() {
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppManagerCallback
        public void onInteractiveAppServiceAdded(String iAppServiceId) {
            synchronized (TvInteractiveAppManager.this.mLock) {
                for (TvInteractiveAppCallbackRecord record : TvInteractiveAppManager.this.mCallbackRecords) {
                    record.postInteractiveAppServiceAdded(iAppServiceId);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppManagerCallback
        public void onInteractiveAppServiceRemoved(String iAppServiceId) {
            synchronized (TvInteractiveAppManager.this.mLock) {
                for (TvInteractiveAppCallbackRecord record : TvInteractiveAppManager.this.mCallbackRecords) {
                    record.postInteractiveAppServiceRemoved(iAppServiceId);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppManagerCallback
        public void onInteractiveAppServiceUpdated(String iAppServiceId) {
            synchronized (TvInteractiveAppManager.this.mLock) {
                for (TvInteractiveAppCallbackRecord record : TvInteractiveAppManager.this.mCallbackRecords) {
                    record.postInteractiveAppServiceUpdated(iAppServiceId);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppManagerCallback
        public void onTvInteractiveAppServiceInfoUpdated(TvInteractiveAppServiceInfo iAppInfo) {
            synchronized (TvInteractiveAppManager.this.mLock) {
                for (TvInteractiveAppCallbackRecord record : TvInteractiveAppManager.this.mCallbackRecords) {
                    record.postTvInteractiveAppServiceInfoUpdated(iAppInfo);
                }
            }
        }

        @Override // android.media.tv.interactive.ITvInteractiveAppManagerCallback
        public void onStateChanged(String iAppServiceId, int type, int state, int err) {
            synchronized (TvInteractiveAppManager.this.mLock) {
                for (TvInteractiveAppCallbackRecord record : TvInteractiveAppManager.this.mCallbackRecords) {
                    record.postStateChanged(iAppServiceId, type, state, err);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class TvInteractiveAppCallback {
        public void onInteractiveAppServiceAdded(String iAppServiceId) {
        }

        public void onInteractiveAppServiceRemoved(String iAppServiceId) {
        }

        public void onInteractiveAppServiceUpdated(String iAppServiceId) {
        }

        public void onTvInteractiveAppServiceInfoUpdated(TvInteractiveAppServiceInfo iAppInfo) {
        }

        public void onTvInteractiveAppServiceStateChanged(String iAppServiceId, int type, int state, int err) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class TvInteractiveAppCallbackRecord {
        private final TvInteractiveAppCallback mCallback;
        private final Executor mExecutor;

        TvInteractiveAppCallbackRecord(TvInteractiveAppCallback callback, Executor executor) {
            this.mCallback = callback;
            this.mExecutor = executor;
        }

        public TvInteractiveAppCallback getCallback() {
            return this.mCallback;
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$TvInteractiveAppCallbackRecord$1 */
        /* loaded from: classes2.dex */
        public class AnonymousClass1 implements Runnable {
            final /* synthetic */ String val$iAppServiceId;

            AnonymousClass1(String str) {
                iAppServiceId = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                TvInteractiveAppCallbackRecord.this.mCallback.onInteractiveAppServiceAdded(iAppServiceId);
            }
        }

        public void postInteractiveAppServiceAdded(String iAppServiceId) {
            this.mExecutor.execute(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.TvInteractiveAppCallbackRecord.1
                final /* synthetic */ String val$iAppServiceId;

                AnonymousClass1(String iAppServiceId2) {
                    iAppServiceId = iAppServiceId2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    TvInteractiveAppCallbackRecord.this.mCallback.onInteractiveAppServiceAdded(iAppServiceId);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$TvInteractiveAppCallbackRecord$2 */
        /* loaded from: classes2.dex */
        public class AnonymousClass2 implements Runnable {
            final /* synthetic */ String val$iAppServiceId;

            AnonymousClass2(String str) {
                iAppServiceId = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                TvInteractiveAppCallbackRecord.this.mCallback.onInteractiveAppServiceRemoved(iAppServiceId);
            }
        }

        public void postInteractiveAppServiceRemoved(String iAppServiceId) {
            this.mExecutor.execute(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.TvInteractiveAppCallbackRecord.2
                final /* synthetic */ String val$iAppServiceId;

                AnonymousClass2(String iAppServiceId2) {
                    iAppServiceId = iAppServiceId2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    TvInteractiveAppCallbackRecord.this.mCallback.onInteractiveAppServiceRemoved(iAppServiceId);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$TvInteractiveAppCallbackRecord$3 */
        /* loaded from: classes2.dex */
        public class AnonymousClass3 implements Runnable {
            final /* synthetic */ String val$iAppServiceId;

            AnonymousClass3(String str) {
                iAppServiceId = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                TvInteractiveAppCallbackRecord.this.mCallback.onInteractiveAppServiceUpdated(iAppServiceId);
            }
        }

        public void postInteractiveAppServiceUpdated(String iAppServiceId) {
            this.mExecutor.execute(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.TvInteractiveAppCallbackRecord.3
                final /* synthetic */ String val$iAppServiceId;

                AnonymousClass3(String iAppServiceId2) {
                    iAppServiceId = iAppServiceId2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    TvInteractiveAppCallbackRecord.this.mCallback.onInteractiveAppServiceUpdated(iAppServiceId);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$TvInteractiveAppCallbackRecord$4 */
        /* loaded from: classes2.dex */
        public class AnonymousClass4 implements Runnable {
            final /* synthetic */ TvInteractiveAppServiceInfo val$iAppInfo;

            AnonymousClass4(TvInteractiveAppServiceInfo tvInteractiveAppServiceInfo) {
                iAppInfo = tvInteractiveAppServiceInfo;
            }

            @Override // java.lang.Runnable
            public void run() {
                TvInteractiveAppCallbackRecord.this.mCallback.onTvInteractiveAppServiceInfoUpdated(iAppInfo);
            }
        }

        public void postTvInteractiveAppServiceInfoUpdated(TvInteractiveAppServiceInfo iAppInfo) {
            this.mExecutor.execute(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.TvInteractiveAppCallbackRecord.4
                final /* synthetic */ TvInteractiveAppServiceInfo val$iAppInfo;

                AnonymousClass4(TvInteractiveAppServiceInfo iAppInfo2) {
                    iAppInfo = iAppInfo2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    TvInteractiveAppCallbackRecord.this.mCallback.onTvInteractiveAppServiceInfoUpdated(iAppInfo);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$TvInteractiveAppCallbackRecord$5 */
        /* loaded from: classes2.dex */
        public class AnonymousClass5 implements Runnable {
            final /* synthetic */ int val$err;
            final /* synthetic */ String val$iAppServiceId;
            final /* synthetic */ int val$state;
            final /* synthetic */ int val$type;

            AnonymousClass5(String str, int i, int i2, int i3) {
                iAppServiceId = str;
                type = i;
                state = i2;
                err = i3;
            }

            @Override // java.lang.Runnable
            public void run() {
                TvInteractiveAppCallbackRecord.this.mCallback.onTvInteractiveAppServiceStateChanged(iAppServiceId, type, state, err);
            }
        }

        public void postStateChanged(String iAppServiceId, int type, int state, int err) {
            this.mExecutor.execute(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.TvInteractiveAppCallbackRecord.5
                final /* synthetic */ int val$err;
                final /* synthetic */ String val$iAppServiceId;
                final /* synthetic */ int val$state;
                final /* synthetic */ int val$type;

                AnonymousClass5(String iAppServiceId2, int type2, int state2, int err2) {
                    iAppServiceId = iAppServiceId2;
                    type = type2;
                    state = state2;
                    err = err2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    TvInteractiveAppCallbackRecord.this.mCallback.onTvInteractiveAppServiceStateChanged(iAppServiceId, type, state, err);
                }
            });
        }
    }

    public void createSession(String iAppServiceId, int type, SessionCallback callback, Handler handler) {
        createSessionInternal(iAppServiceId, type, callback, handler);
    }

    private void createSessionInternal(String iAppServiceId, int type, SessionCallback callback, Handler handler) {
        Preconditions.checkNotNull(iAppServiceId);
        Preconditions.checkNotNull(callback);
        Preconditions.checkNotNull(handler);
        SessionCallbackRecord record = new SessionCallbackRecord(callback, handler);
        synchronized (this.mSessionCallbackRecordMap) {
            int seq = this.mNextSeq;
            this.mNextSeq = seq + 1;
            this.mSessionCallbackRecordMap.put(seq, record);
            try {
                this.mService.createSession(this.mClient, iAppServiceId, type, seq, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }
    }

    public List<TvInteractiveAppServiceInfo> getTvInteractiveAppServiceList() {
        try {
            return this.mService.getTvInteractiveAppServiceList(this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public List<AppLinkInfo> getAppLinkInfoList() {
        try {
            return this.mService.getAppLinkInfoList(this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void registerAppLinkInfo(String tvIAppServiceId, AppLinkInfo appLinkInfo) {
        try {
            this.mService.registerAppLinkInfo(tvIAppServiceId, appLinkInfo, this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void unregisterAppLinkInfo(String tvIAppServiceId, AppLinkInfo appLinkInfo) {
        try {
            this.mService.unregisterAppLinkInfo(tvIAppServiceId, appLinkInfo, this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void sendAppLinkCommand(String tvIAppServiceId, Bundle command) {
        try {
            this.mService.sendAppLinkCommand(tvIAppServiceId, command, this.mUserId);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void registerCallback(Executor executor, TvInteractiveAppCallback callback) {
        Preconditions.checkNotNull(callback);
        Preconditions.checkNotNull(executor);
        synchronized (this.mLock) {
            this.mCallbackRecords.add(new TvInteractiveAppCallbackRecord(callback, executor));
        }
    }

    public void unregisterCallback(TvInteractiveAppCallback callback) {
        Preconditions.checkNotNull(callback);
        synchronized (this.mLock) {
            Iterator<TvInteractiveAppCallbackRecord> it = this.mCallbackRecords.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                TvInteractiveAppCallbackRecord record = it.next();
                if (record.getCallback() == callback) {
                    it.remove();
                    break;
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class Session {
        static final int DISPATCH_HANDLED = 1;
        static final int DISPATCH_IN_PROGRESS = -1;
        static final int DISPATCH_NOT_HANDLED = 0;
        private static final long INPUT_SESSION_NOT_RESPONDING_TIMEOUT = 2500;
        private final InputEventHandler mHandler;
        private InputChannel mInputChannel;
        private TvInputManager.Session mInputSession;
        private final Pools.Pool<PendingEvent> mPendingEventPool;
        private final SparseArray<PendingEvent> mPendingEvents;
        private TvInputEventSender mSender;
        private final int mSeq;
        private final ITvInteractiveAppManager mService;
        private final SparseArray<SessionCallbackRecord> mSessionCallbackRecordMap;
        private IBinder mToken;
        private final int mUserId;

        /* loaded from: classes2.dex */
        public interface FinishedInputEventCallback {
            void onFinishedInputEvent(Object obj, boolean z);
        }

        /* synthetic */ Session(IBinder iBinder, InputChannel inputChannel, ITvInteractiveAppManager iTvInteractiveAppManager, int i, int i2, SparseArray sparseArray, SessionIA sessionIA) {
            this(iBinder, inputChannel, iTvInteractiveAppManager, i, i2, sparseArray);
        }

        private Session(IBinder token, InputChannel channel, ITvInteractiveAppManager service, int userId, int seq, SparseArray<SessionCallbackRecord> sessionCallbackRecordMap) {
            this.mHandler = new InputEventHandler(Looper.getMainLooper());
            this.mPendingEventPool = new Pools.SimplePool(20);
            this.mPendingEvents = new SparseArray<>(20);
            this.mToken = token;
            this.mInputChannel = channel;
            this.mService = service;
            this.mUserId = userId;
            this.mSeq = seq;
            this.mSessionCallbackRecordMap = sessionCallbackRecordMap;
        }

        public TvInputManager.Session getInputSession() {
            return this.mInputSession;
        }

        public void setInputSession(TvInputManager.Session inputSession) {
            this.mInputSession = inputSession;
        }

        public void startInteractiveApp() {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.startInteractiveApp(iBinder, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void stopInteractiveApp() {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.stopInteractiveApp(iBinder, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void resetInteractiveApp() {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.resetInteractiveApp(iBinder, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void createBiInteractiveApp(Uri biIAppUri, Bundle params) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.createBiInteractiveApp(iBinder, biIAppUri, params, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void destroyBiInteractiveApp(String biIAppId) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.destroyBiInteractiveApp(iBinder, biIAppId, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void setTeletextAppEnabled(boolean enable) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.setTeletextAppEnabled(iBinder, enable, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void sendCurrentVideoBounds(Rect bounds) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.sendCurrentVideoBounds(iBinder, bounds, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void sendCurrentChannelUri(Uri channelUri) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.sendCurrentChannelUri(iBinder, channelUri, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void sendCurrentChannelLcn(int lcn) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.sendCurrentChannelLcn(iBinder, lcn, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void sendStreamVolume(float volume) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.sendStreamVolume(iBinder, volume, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void sendTrackInfoList(List<TvTrackInfo> tracks) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.sendTrackInfoList(iBinder, tracks, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void sendCurrentTvInputId(String inputId) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.sendCurrentTvInputId(iBinder, inputId, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void sendTimeShiftMode(int mode) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.sendTimeShiftMode(iBinder, mode, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void sendAvailableSpeeds(float[] speeds) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.sendAvailableSpeeds(iBinder, speeds, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void sendTvRecordingInfo(TvRecordingInfo recordingInfo) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.sendTvRecordingInfo(iBinder, recordingInfo, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void sendTvRecordingInfoList(List<TvRecordingInfo> recordingInfoList) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.sendTvRecordingInfoList(iBinder, recordingInfoList, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyRecordingStarted(String recordingId, String requestId) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyRecordingStarted(iBinder, recordingId, requestId, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyRecordingStopped(String recordingId) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyRecordingStopped(iBinder, recordingId, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void sendSigningResult(String signingId, byte[] result) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.sendSigningResult(iBinder, signingId, result, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyError(String errMsg, Bundle params) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyError(iBinder, errMsg, params, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyTimeShiftPlaybackParams(PlaybackParams params) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyTimeShiftPlaybackParams(iBinder, params, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyTimeShiftStatusChanged(String inputId, int status) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyTimeShiftStatusChanged(iBinder, inputId, status, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyTimeShiftStartPositionChanged(String inputId, long timeMs) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyTimeShiftStartPositionChanged(iBinder, inputId, timeMs, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyTimeShiftCurrentPositionChanged(String inputId, long timeMs) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyTimeShiftCurrentPositionChanged(iBinder, inputId, timeMs, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyRecordingConnectionFailed(String recordingId, String inputId) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyRecordingConnectionFailed(iBinder, recordingId, inputId, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyRecordingDisconnected(String recordingId, String inputId) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyRecordingDisconnected(iBinder, recordingId, inputId, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyRecordingTuned(String recordingId, Uri channelUri) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyRecordingTuned(iBinder, recordingId, channelUri, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyRecordingError(String recordingId, int err) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyRecordingError(iBinder, recordingId, err, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyRecordingScheduled(String recordingId, String requestId) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyRecordingScheduled(iBinder, recordingId, requestId, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void setSurface(Surface surface) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.setSurface(iBinder, surface, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void createMediaView(View view, Rect frame) {
            Preconditions.checkNotNull(view);
            Preconditions.checkNotNull(frame);
            if (view.getWindowToken() == null) {
                throw new IllegalStateException("view must be attached to a window");
            }
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.createMediaView(iBinder, view.getWindowToken(), frame, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void relayoutMediaView(Rect frame) {
            Preconditions.checkNotNull(frame);
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.relayoutMediaView(iBinder, frame, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void removeMediaView() {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.removeMediaView(iBinder, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void dispatchSurfaceChanged(int format, int width, int height) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.dispatchSurfaceChanged(iBinder, format, width, height, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public int dispatchInputEvent(InputEvent event, Object token, FinishedInputEventCallback callback, Handler handler) {
            Preconditions.checkNotNull(event);
            Preconditions.checkNotNull(callback);
            Preconditions.checkNotNull(handler);
            synchronized (this.mHandler) {
                if (this.mInputChannel == null) {
                    return 0;
                }
                PendingEvent p = obtainPendingEventLocked(event, token, callback, handler);
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    return sendInputEventOnMainLooperLocked(p);
                }
                Message msg = this.mHandler.obtainMessage(1, p);
                msg.setAsynchronous(true);
                this.mHandler.sendMessage(msg);
                return -1;
            }
        }

        public void notifyBroadcastInfoResponse(BroadcastInfoResponse response) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyBroadcastInfoResponse(iBinder, response, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyAdResponse(AdResponse response) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyAdResponse(iBinder, response, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyAdBufferConsumed(AdBuffer buffer) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                try {
                    this.mService.notifyAdBufferConsumed(iBinder, buffer, this.mUserId);
                } catch (RemoteException e) {
                    throw e.rethrowFromSystemServer();
                }
            } finally {
                if (buffer != null) {
                    buffer.getSharedMemory().close();
                }
            }
        }

        public void release() {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.releaseSession(iBinder, this.mUserId);
                releaseInternal();
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyTuned(Uri channelUri) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyTuned(iBinder, channelUri, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyTrackSelected(int type, String trackId) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyTrackSelected(iBinder, type, trackId, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyTracksChanged(List<TvTrackInfo> tracks) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyTracksChanged(iBinder, tracks, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyVideoAvailable() {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyVideoAvailable(iBinder, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyVideoUnavailable(int reason) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyVideoUnavailable(iBinder, reason, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyContentAllowed() {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyContentAllowed(iBinder, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyContentBlocked(TvContentRating rating) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyContentBlocked(iBinder, rating.flattenToString(), this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifySignalStrength(int strength) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifySignalStrength(iBinder, strength, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        public void notifyTvMessage(int type, Bundle data) {
            IBinder iBinder = this.mToken;
            if (iBinder == null) {
                Log.w(TvInteractiveAppManager.TAG, "The session has been already released");
                return;
            }
            try {
                this.mService.notifyTvMessage(iBinder, type, data, this.mUserId);
            } catch (RemoteException e) {
                throw e.rethrowFromSystemServer();
            }
        }

        private void flushPendingEventsLocked() {
            this.mHandler.removeMessages(3);
            int count = this.mPendingEvents.size();
            for (int i = 0; i < count; i++) {
                int seq = this.mPendingEvents.keyAt(i);
                Message msg = this.mHandler.obtainMessage(3, seq, 0);
                msg.setAsynchronous(true);
                msg.sendToTarget();
            }
        }

        public void releaseInternal() {
            this.mToken = null;
            synchronized (this.mHandler) {
                if (this.mInputChannel != null) {
                    if (this.mSender != null) {
                        flushPendingEventsLocked();
                        this.mSender.dispose();
                        this.mSender = null;
                    }
                    this.mInputChannel.dispose();
                    this.mInputChannel = null;
                }
            }
            synchronized (this.mSessionCallbackRecordMap) {
                this.mSessionCallbackRecordMap.delete(this.mSeq);
            }
        }

        private PendingEvent obtainPendingEventLocked(InputEvent event, Object token, FinishedInputEventCallback callback, Handler handler) {
            PendingEvent p = this.mPendingEventPool.acquire();
            if (p == null) {
                p = new PendingEvent();
            }
            p.mEvent = event;
            p.mEventToken = token;
            p.mCallback = callback;
            p.mEventHandler = handler;
            return p;
        }

        void invokeFinishedInputEventCallback(PendingEvent p, boolean handled) {
            p.mHandled = handled;
            if (p.mEventHandler.getLooper().isCurrentThread()) {
                p.run();
                return;
            }
            Message msg = Message.obtain(p.mEventHandler, p);
            msg.setAsynchronous(true);
            msg.sendToTarget();
        }

        public void sendInputEventAndReportResultOnMainLooper(PendingEvent p) {
            synchronized (this.mHandler) {
                int result = sendInputEventOnMainLooperLocked(p);
                if (result == -1) {
                    return;
                }
                invokeFinishedInputEventCallback(p, false);
            }
        }

        private int sendInputEventOnMainLooperLocked(PendingEvent p) {
            InputChannel inputChannel = this.mInputChannel;
            if (inputChannel != null) {
                if (this.mSender == null) {
                    this.mSender = new TvInputEventSender(inputChannel, this.mHandler.getLooper());
                }
                InputEvent event = p.mEvent;
                int seq = event.getSequenceNumber();
                if (this.mSender.sendInputEvent(seq, event)) {
                    this.mPendingEvents.put(seq, p);
                    Message msg = this.mHandler.obtainMessage(2, p);
                    msg.setAsynchronous(true);
                    this.mHandler.sendMessageDelayed(msg, INPUT_SESSION_NOT_RESPONDING_TIMEOUT);
                    return -1;
                }
                Log.w(TvInteractiveAppManager.TAG, "Unable to send input event to session: " + this.mToken + " dropping:" + event);
                return 0;
            }
            return 0;
        }

        void finishedInputEvent(int seq, boolean handled, boolean timeout) {
            synchronized (this.mHandler) {
                int index = this.mPendingEvents.indexOfKey(seq);
                if (index < 0) {
                    return;
                }
                PendingEvent p = this.mPendingEvents.valueAt(index);
                this.mPendingEvents.removeAt(index);
                if (timeout) {
                    Log.w(TvInteractiveAppManager.TAG, "Timeout waiting for session to handle input event after 2500 ms: " + this.mToken);
                } else {
                    this.mHandler.removeMessages(2, p);
                }
                invokeFinishedInputEventCallback(p, handled);
            }
        }

        public void recyclePendingEventLocked(PendingEvent p) {
            p.recycle();
            this.mPendingEventPool.release(p);
        }

        /* loaded from: classes2.dex */
        public final class InputEventHandler extends Handler {
            public static final int MSG_FLUSH_INPUT_EVENT = 3;
            public static final int MSG_SEND_INPUT_EVENT = 1;
            public static final int MSG_TIMEOUT_INPUT_EVENT = 2;

            InputEventHandler(Looper looper) {
                super(looper, null, true);
            }

            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                switch (msg.what) {
                    case 1:
                        Session.this.sendInputEventAndReportResultOnMainLooper((PendingEvent) msg.obj);
                        return;
                    case 2:
                        Session.this.finishedInputEvent(msg.arg1, false, true);
                        return;
                    case 3:
                        Session.this.finishedInputEvent(msg.arg1, false, false);
                        return;
                    default:
                        return;
                }
            }
        }

        /* loaded from: classes2.dex */
        public final class TvInputEventSender extends InputEventSender {
            TvInputEventSender(InputChannel inputChannel, Looper looper) {
                super(inputChannel, looper);
            }

            @Override // android.view.InputEventSender
            public void onInputEventFinished(int seq, boolean handled) {
                Session.this.finishedInputEvent(seq, handled, false);
            }
        }

        /* loaded from: classes2.dex */
        public final class PendingEvent implements Runnable {
            public FinishedInputEventCallback mCallback;
            public InputEvent mEvent;
            public Handler mEventHandler;
            public Object mEventToken;
            public boolean mHandled;

            /* synthetic */ PendingEvent(Session session, PendingEventIA pendingEventIA) {
                this();
            }

            private PendingEvent() {
            }

            public void recycle() {
                this.mEvent = null;
                this.mEventToken = null;
                this.mCallback = null;
                this.mEventHandler = null;
                this.mHandled = false;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.mCallback.onFinishedInputEvent(this.mEventToken, this.mHandled);
                synchronized (this.mEventHandler) {
                    Session.this.recyclePendingEventLocked(this);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class SessionCallbackRecord {
        private final Handler mHandler;
        private Session mSession;
        private final SessionCallback mSessionCallback;

        SessionCallbackRecord(SessionCallback sessionCallback, Handler handler) {
            this.mSessionCallback = sessionCallback;
            this.mHandler = handler;
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$1 */
        /* loaded from: classes2.dex */
        public class AnonymousClass1 implements Runnable {
            final /* synthetic */ Session val$session;

            AnonymousClass1(Session session) {
                session = session;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onSessionCreated(session);
            }
        }

        void postSessionCreated(Session session) {
            this.mSession = session;
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.1
                final /* synthetic */ Session val$session;

                AnonymousClass1(Session session2) {
                    session = session2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onSessionCreated(session);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$2 */
        /* loaded from: classes2.dex */
        public class AnonymousClass2 implements Runnable {
            AnonymousClass2() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onSessionReleased(SessionCallbackRecord.this.mSession);
            }
        }

        void postSessionReleased() {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.2
                AnonymousClass2() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onSessionReleased(SessionCallbackRecord.this.mSession);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$3 */
        /* loaded from: classes2.dex */
        public class AnonymousClass3 implements Runnable {
            final /* synthetic */ int val$bottom;
            final /* synthetic */ int val$left;
            final /* synthetic */ int val$right;
            final /* synthetic */ int val$top;

            AnonymousClass3(int i, int i2, int i3, int i4) {
                left = i;
                top = i2;
                right = i3;
                bottom = i4;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onLayoutSurface(SessionCallbackRecord.this.mSession, left, top, right, bottom);
            }
        }

        void postLayoutSurface(int left, int top, int right, int bottom) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.3
                final /* synthetic */ int val$bottom;
                final /* synthetic */ int val$left;
                final /* synthetic */ int val$right;
                final /* synthetic */ int val$top;

                AnonymousClass3(int left2, int top2, int right2, int bottom2) {
                    left = left2;
                    top = top2;
                    right = right2;
                    bottom = bottom2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onLayoutSurface(SessionCallbackRecord.this.mSession, left, top, right, bottom);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$4 */
        /* loaded from: classes2.dex */
        public class AnonymousClass4 implements Runnable {
            final /* synthetic */ BroadcastInfoRequest val$request;

            AnonymousClass4(BroadcastInfoRequest broadcastInfoRequest) {
                request = broadcastInfoRequest;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (SessionCallbackRecord.this.mSession.getInputSession() != null) {
                    SessionCallbackRecord.this.mSession.getInputSession().requestBroadcastInfo(request);
                }
            }
        }

        void postBroadcastInfoRequest(BroadcastInfoRequest request) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.4
                final /* synthetic */ BroadcastInfoRequest val$request;

                AnonymousClass4(BroadcastInfoRequest request2) {
                    request = request2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (SessionCallbackRecord.this.mSession.getInputSession() != null) {
                        SessionCallbackRecord.this.mSession.getInputSession().requestBroadcastInfo(request);
                    }
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$5 */
        /* loaded from: classes2.dex */
        public class AnonymousClass5 implements Runnable {
            final /* synthetic */ int val$requestId;

            AnonymousClass5(int i) {
                requestId = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (SessionCallbackRecord.this.mSession.getInputSession() != null) {
                    SessionCallbackRecord.this.mSession.getInputSession().removeBroadcastInfo(requestId);
                }
            }
        }

        void postRemoveBroadcastInfo(int requestId) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.5
                final /* synthetic */ int val$requestId;

                AnonymousClass5(int requestId2) {
                    requestId = requestId2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (SessionCallbackRecord.this.mSession.getInputSession() != null) {
                        SessionCallbackRecord.this.mSession.getInputSession().removeBroadcastInfo(requestId);
                    }
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$6 */
        /* loaded from: classes2.dex */
        public class AnonymousClass6 implements Runnable {
            final /* synthetic */ String val$cmdType;
            final /* synthetic */ Bundle val$parameters;

            AnonymousClass6(String str, Bundle bundle) {
                cmdType = str;
                parameters = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onCommandRequest(SessionCallbackRecord.this.mSession, cmdType, parameters);
            }
        }

        void postCommandRequest(String cmdType, Bundle parameters) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.6
                final /* synthetic */ String val$cmdType;
                final /* synthetic */ Bundle val$parameters;

                AnonymousClass6(String cmdType2, Bundle parameters2) {
                    cmdType = cmdType2;
                    parameters = parameters2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onCommandRequest(SessionCallbackRecord.this.mSession, cmdType, parameters);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$7 */
        /* loaded from: classes2.dex */
        public class AnonymousClass7 implements Runnable {
            final /* synthetic */ String val$cmdType;
            final /* synthetic */ Bundle val$parameters;

            AnonymousClass7(String str, Bundle bundle) {
                cmdType = str;
                parameters = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onTimeShiftCommandRequest(SessionCallbackRecord.this.mSession, cmdType, parameters);
            }
        }

        void postTimeShiftCommandRequest(String cmdType, Bundle parameters) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.7
                final /* synthetic */ String val$cmdType;
                final /* synthetic */ Bundle val$parameters;

                AnonymousClass7(String cmdType2, Bundle parameters2) {
                    cmdType = cmdType2;
                    parameters = parameters2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onTimeShiftCommandRequest(SessionCallbackRecord.this.mSession, cmdType, parameters);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$8 */
        /* loaded from: classes2.dex */
        public class AnonymousClass8 implements Runnable {
            final /* synthetic */ Rect val$rect;

            AnonymousClass8(Rect rect) {
                rect = rect;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onSetVideoBounds(SessionCallbackRecord.this.mSession, rect);
            }
        }

        void postSetVideoBounds(Rect rect) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.8
                final /* synthetic */ Rect val$rect;

                AnonymousClass8(Rect rect2) {
                    rect = rect2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onSetVideoBounds(SessionCallbackRecord.this.mSession, rect);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$9 */
        /* loaded from: classes2.dex */
        public class AnonymousClass9 implements Runnable {
            AnonymousClass9() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onRequestCurrentVideoBounds(SessionCallbackRecord.this.mSession);
            }
        }

        void postRequestCurrentVideoBounds() {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.9
                AnonymousClass9() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRequestCurrentVideoBounds(SessionCallbackRecord.this.mSession);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$10 */
        /* loaded from: classes2.dex */
        public class AnonymousClass10 implements Runnable {
            AnonymousClass10() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onRequestCurrentChannelUri(SessionCallbackRecord.this.mSession);
            }
        }

        void postRequestCurrentChannelUri() {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.10
                AnonymousClass10() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRequestCurrentChannelUri(SessionCallbackRecord.this.mSession);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$11 */
        /* loaded from: classes2.dex */
        public class AnonymousClass11 implements Runnable {
            AnonymousClass11() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onRequestCurrentChannelLcn(SessionCallbackRecord.this.mSession);
            }
        }

        void postRequestCurrentChannelLcn() {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.11
                AnonymousClass11() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRequestCurrentChannelLcn(SessionCallbackRecord.this.mSession);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$12 */
        /* loaded from: classes2.dex */
        public class AnonymousClass12 implements Runnable {
            AnonymousClass12() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onRequestStreamVolume(SessionCallbackRecord.this.mSession);
            }
        }

        void postRequestStreamVolume() {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.12
                AnonymousClass12() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRequestStreamVolume(SessionCallbackRecord.this.mSession);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$13 */
        /* loaded from: classes2.dex */
        public class AnonymousClass13 implements Runnable {
            AnonymousClass13() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onRequestTrackInfoList(SessionCallbackRecord.this.mSession);
            }
        }

        void postRequestTrackInfoList() {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.13
                AnonymousClass13() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRequestTrackInfoList(SessionCallbackRecord.this.mSession);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$14 */
        /* loaded from: classes2.dex */
        public class AnonymousClass14 implements Runnable {
            AnonymousClass14() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onRequestCurrentTvInputId(SessionCallbackRecord.this.mSession);
            }
        }

        void postRequestCurrentTvInputId() {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.14
                AnonymousClass14() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRequestCurrentTvInputId(SessionCallbackRecord.this.mSession);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$15 */
        /* loaded from: classes2.dex */
        public class AnonymousClass15 implements Runnable {
            AnonymousClass15() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onRequestTimeShiftMode(SessionCallbackRecord.this.mSession);
            }
        }

        void postRequestTimeShiftMode() {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.15
                AnonymousClass15() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRequestTimeShiftMode(SessionCallbackRecord.this.mSession);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$16 */
        /* loaded from: classes2.dex */
        public class AnonymousClass16 implements Runnable {
            AnonymousClass16() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onRequestAvailableSpeeds(SessionCallbackRecord.this.mSession);
            }
        }

        void postRequestAvailableSpeeds() {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.16
                AnonymousClass16() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRequestAvailableSpeeds(SessionCallbackRecord.this.mSession);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$17 */
        /* loaded from: classes2.dex */
        public class AnonymousClass17 implements Runnable {
            final /* synthetic */ Uri val$programUri;
            final /* synthetic */ String val$requestId;

            AnonymousClass17(String str, Uri uri) {
                requestId = str;
                programUri = uri;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onRequestStartRecording(SessionCallbackRecord.this.mSession, requestId, programUri);
            }
        }

        void postRequestStartRecording(String requestId, Uri programUri) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.17
                final /* synthetic */ Uri val$programUri;
                final /* synthetic */ String val$requestId;

                AnonymousClass17(String requestId2, Uri programUri2) {
                    requestId = requestId2;
                    programUri = programUri2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRequestStartRecording(SessionCallbackRecord.this.mSession, requestId, programUri);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$18 */
        /* loaded from: classes2.dex */
        public class AnonymousClass18 implements Runnable {
            final /* synthetic */ String val$recordingId;

            AnonymousClass18(String str) {
                recordingId = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onRequestStopRecording(SessionCallbackRecord.this.mSession, recordingId);
            }
        }

        void postRequestStopRecording(String recordingId) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.18
                final /* synthetic */ String val$recordingId;

                AnonymousClass18(String recordingId2) {
                    recordingId = recordingId2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRequestStopRecording(SessionCallbackRecord.this.mSession, recordingId);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$19 */
        /* loaded from: classes2.dex */
        public class AnonymousClass19 implements Runnable {
            final /* synthetic */ Uri val$channelUri;
            final /* synthetic */ String val$inputId;
            final /* synthetic */ Bundle val$params;
            final /* synthetic */ Uri val$programUri;
            final /* synthetic */ String val$requestId;

            AnonymousClass19(String str, String str2, Uri uri, Uri uri2, Bundle bundle) {
                requestId = str;
                inputId = str2;
                channelUri = uri;
                programUri = uri2;
                params = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onRequestScheduleRecording(SessionCallbackRecord.this.mSession, requestId, inputId, channelUri, programUri, params);
            }
        }

        void postRequestScheduleRecording(String requestId, String inputId, Uri channelUri, Uri programUri, Bundle params) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.19
                final /* synthetic */ Uri val$channelUri;
                final /* synthetic */ String val$inputId;
                final /* synthetic */ Bundle val$params;
                final /* synthetic */ Uri val$programUri;
                final /* synthetic */ String val$requestId;

                AnonymousClass19(String requestId2, String inputId2, Uri channelUri2, Uri programUri2, Bundle params2) {
                    requestId = requestId2;
                    inputId = inputId2;
                    channelUri = channelUri2;
                    programUri = programUri2;
                    params = params2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRequestScheduleRecording(SessionCallbackRecord.this.mSession, requestId, inputId, channelUri, programUri, params);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$20 */
        /* loaded from: classes2.dex */
        public class AnonymousClass20 implements Runnable {
            final /* synthetic */ Uri val$channelUri;
            final /* synthetic */ long val$duration;
            final /* synthetic */ String val$inputId;
            final /* synthetic */ Bundle val$params;
            final /* synthetic */ int val$repeatDays;
            final /* synthetic */ String val$requestId;
            final /* synthetic */ long val$startTime;

            AnonymousClass20(String str, String str2, Uri uri, long j, long j2, int i, Bundle bundle) {
                requestId = str;
                inputId = str2;
                channelUri = uri;
                startTime = j;
                duration = j2;
                repeatDays = i;
                params = bundle;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onRequestScheduleRecording(SessionCallbackRecord.this.mSession, requestId, inputId, channelUri, startTime, duration, repeatDays, params);
            }
        }

        void postRequestScheduleRecording(String requestId, String inputId, Uri channelUri, long startTime, long duration, int repeatDays, Bundle params) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.20
                final /* synthetic */ Uri val$channelUri;
                final /* synthetic */ long val$duration;
                final /* synthetic */ String val$inputId;
                final /* synthetic */ Bundle val$params;
                final /* synthetic */ int val$repeatDays;
                final /* synthetic */ String val$requestId;
                final /* synthetic */ long val$startTime;

                AnonymousClass20(String requestId2, String inputId2, Uri channelUri2, long startTime2, long duration2, int repeatDays2, Bundle params2) {
                    requestId = requestId2;
                    inputId = inputId2;
                    channelUri = channelUri2;
                    startTime = startTime2;
                    duration = duration2;
                    repeatDays = repeatDays2;
                    params = params2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRequestScheduleRecording(SessionCallbackRecord.this.mSession, requestId, inputId, channelUri, startTime, duration, repeatDays, params);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$21 */
        /* loaded from: classes2.dex */
        public class AnonymousClass21 implements Runnable {
            final /* synthetic */ String val$algorithm;
            final /* synthetic */ String val$alias;
            final /* synthetic */ byte[] val$data;
            final /* synthetic */ String val$id;

            AnonymousClass21(String str, String str2, String str3, byte[] bArr) {
                id = str;
                algorithm = str2;
                alias = str3;
                data = bArr;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onRequestSigning(SessionCallbackRecord.this.mSession, id, algorithm, alias, data);
            }
        }

        void postRequestSigning(String id, String algorithm, String alias, byte[] data) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.21
                final /* synthetic */ String val$algorithm;
                final /* synthetic */ String val$alias;
                final /* synthetic */ byte[] val$data;
                final /* synthetic */ String val$id;

                AnonymousClass21(String id2, String algorithm2, String alias2, byte[] data2) {
                    id = id2;
                    algorithm = algorithm2;
                    alias = alias2;
                    data = data2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRequestSigning(SessionCallbackRecord.this.mSession, id, algorithm, alias, data);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$22 */
        /* loaded from: classes2.dex */
        public class AnonymousClass22 implements Runnable {
            final /* synthetic */ String val$recordingId;

            AnonymousClass22(String str) {
                recordingId = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onRequestTvRecordingInfo(SessionCallbackRecord.this.mSession, recordingId);
            }
        }

        void postRequestTvRecordingInfo(String recordingId) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.22
                final /* synthetic */ String val$recordingId;

                AnonymousClass22(String recordingId2) {
                    recordingId = recordingId2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRequestTvRecordingInfo(SessionCallbackRecord.this.mSession, recordingId);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$23 */
        /* loaded from: classes2.dex */
        public class AnonymousClass23 implements Runnable {
            final /* synthetic */ int val$type;

            AnonymousClass23(int i) {
                type = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onRequestTvRecordingInfoList(SessionCallbackRecord.this.mSession, type);
            }
        }

        void postRequestTvRecordingInfoList(int type) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.23
                final /* synthetic */ int val$type;

                AnonymousClass23(int type2) {
                    type = type2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onRequestTvRecordingInfoList(SessionCallbackRecord.this.mSession, type);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$24 */
        /* loaded from: classes2.dex */
        public class AnonymousClass24 implements Runnable {
            final /* synthetic */ String val$recordingId;
            final /* synthetic */ TvRecordingInfo val$recordingInfo;

            AnonymousClass24(String str, TvRecordingInfo tvRecordingInfo) {
                recordingId = str;
                recordingInfo = tvRecordingInfo;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onSetTvRecordingInfo(SessionCallbackRecord.this.mSession, recordingId, recordingInfo);
            }
        }

        void postSetTvRecordingInfo(String recordingId, TvRecordingInfo recordingInfo) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.24
                final /* synthetic */ String val$recordingId;
                final /* synthetic */ TvRecordingInfo val$recordingInfo;

                AnonymousClass24(String recordingId2, TvRecordingInfo recordingInfo2) {
                    recordingId = recordingId2;
                    recordingInfo = recordingInfo2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onSetTvRecordingInfo(SessionCallbackRecord.this.mSession, recordingId, recordingInfo);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$25 */
        /* loaded from: classes2.dex */
        public class AnonymousClass25 implements Runnable {
            final /* synthetic */ AdRequest val$request;

            AnonymousClass25(AdRequest adRequest) {
                request = adRequest;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (SessionCallbackRecord.this.mSession.getInputSession() != null) {
                    SessionCallbackRecord.this.mSession.getInputSession().requestAd(request);
                }
            }
        }

        void postAdRequest(AdRequest request) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.25
                final /* synthetic */ AdRequest val$request;

                AnonymousClass25(AdRequest request2) {
                    request = request2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (SessionCallbackRecord.this.mSession.getInputSession() != null) {
                        SessionCallbackRecord.this.mSession.getInputSession().requestAd(request);
                    }
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$26 */
        /* loaded from: classes2.dex */
        public class AnonymousClass26 implements Runnable {
            final /* synthetic */ int val$err;
            final /* synthetic */ int val$state;

            AnonymousClass26(int i, int i2) {
                state = i;
                err = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onSessionStateChanged(SessionCallbackRecord.this.mSession, state, err);
            }
        }

        void postSessionStateChanged(int state, int err) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.26
                final /* synthetic */ int val$err;
                final /* synthetic */ int val$state;

                AnonymousClass26(int state2, int err2) {
                    state = state2;
                    err = err2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onSessionStateChanged(SessionCallbackRecord.this.mSession, state, err);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$27 */
        /* loaded from: classes2.dex */
        public class AnonymousClass27 implements Runnable {
            final /* synthetic */ String val$biIAppId;
            final /* synthetic */ Uri val$biIAppUri;

            AnonymousClass27(Uri uri, String str) {
                biIAppUri = uri;
                biIAppId = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onBiInteractiveAppCreated(SessionCallbackRecord.this.mSession, biIAppUri, biIAppId);
            }
        }

        void postBiInteractiveAppCreated(Uri biIAppUri, String biIAppId) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.27
                final /* synthetic */ String val$biIAppId;
                final /* synthetic */ Uri val$biIAppUri;

                AnonymousClass27(Uri biIAppUri2, String biIAppId2) {
                    biIAppUri = biIAppUri2;
                    biIAppId = biIAppId2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onBiInteractiveAppCreated(SessionCallbackRecord.this.mSession, biIAppUri, biIAppId);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$28 */
        /* loaded from: classes2.dex */
        public class AnonymousClass28 implements Runnable {
            final /* synthetic */ int val$state;

            AnonymousClass28(int i) {
                state = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                SessionCallbackRecord.this.mSessionCallback.onTeletextAppStateChanged(SessionCallbackRecord.this.mSession, state);
            }
        }

        void postTeletextAppStateChanged(int state) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.28
                final /* synthetic */ int val$state;

                AnonymousClass28(int state2) {
                    state = state2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    SessionCallbackRecord.this.mSessionCallback.onTeletextAppStateChanged(SessionCallbackRecord.this.mSession, state);
                }
            });
        }

        /* renamed from: android.media.tv.interactive.TvInteractiveAppManager$SessionCallbackRecord$29 */
        /* loaded from: classes2.dex */
        public class AnonymousClass29 implements Runnable {
            final /* synthetic */ AdBuffer val$buffer;

            AnonymousClass29(AdBuffer adBuffer) {
                buffer = adBuffer;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (SessionCallbackRecord.this.mSession.getInputSession() != null) {
                    SessionCallbackRecord.this.mSession.getInputSession().notifyAdBufferReady(buffer);
                }
            }
        }

        void postAdBufferReady(AdBuffer buffer) {
            this.mHandler.post(new Runnable() { // from class: android.media.tv.interactive.TvInteractiveAppManager.SessionCallbackRecord.29
                final /* synthetic */ AdBuffer val$buffer;

                AnonymousClass29(AdBuffer buffer2) {
                    buffer = buffer2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (SessionCallbackRecord.this.mSession.getInputSession() != null) {
                        SessionCallbackRecord.this.mSession.getInputSession().notifyAdBufferReady(buffer);
                    }
                }
            });
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class SessionCallback {
        public void onSessionCreated(Session session) {
        }

        public void onSessionReleased(Session session) {
        }

        public void onLayoutSurface(Session session, int left, int top, int right, int bottom) {
        }

        public void onCommandRequest(Session session, String cmdType, Bundle parameters) {
        }

        public void onTimeShiftCommandRequest(Session session, String cmdType, Bundle parameters) {
        }

        public void onSetVideoBounds(Session session, Rect rect) {
        }

        public void onRequestCurrentVideoBounds(Session session) {
        }

        public void onRequestCurrentChannelUri(Session session) {
        }

        public void onRequestCurrentChannelLcn(Session session) {
        }

        public void onRequestStreamVolume(Session session) {
        }

        public void onRequestTrackInfoList(Session session) {
        }

        public void onRequestCurrentTvInputId(Session session) {
        }

        public void onRequestTimeShiftMode(Session session) {
        }

        public void onRequestAvailableSpeeds(Session session) {
        }

        public void onRequestStartRecording(Session session, String requestId, Uri programUri) {
        }

        public void onRequestStopRecording(Session session, String recordingId) {
        }

        public void onRequestScheduleRecording(Session session, String requestId, String inputId, Uri channelUri, Uri programUri, Bundle params) {
        }

        public void onRequestScheduleRecording(Session session, String requestId, String inputId, Uri channelUri, long startTime, long duration, int repeatDays, Bundle params) {
        }

        public void onSetTvRecordingInfo(Session session, String recordingId, TvRecordingInfo recordingInfo) {
        }

        public void onRequestTvRecordingInfo(Session session, String recordingId) {
        }

        public void onRequestTvRecordingInfoList(Session session, int type) {
        }

        public void onRequestSigning(Session session, String signingId, String algorithm, String alias, byte[] data) {
        }

        public void onSessionStateChanged(Session session, int state, int err) {
        }

        public void onBiInteractiveAppCreated(Session session, Uri biIAppUri, String biIAppId) {
        }

        public void onTeletextAppStateChanged(Session session, int state) {
        }
    }
}
