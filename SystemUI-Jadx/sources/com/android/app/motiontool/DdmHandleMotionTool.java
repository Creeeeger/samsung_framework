package com.android.app.motiontool;

import android.ddm.DdmHandle;
import android.media.permission.SafeCloseable;
import android.util.Log;
import android.view.View;
import com.android.app.motiontool.BeginTraceResponse;
import com.android.app.motiontool.EndTraceResponse;
import com.android.app.motiontool.ErrorResponse;
import com.android.app.motiontool.HandshakeResponse;
import com.android.app.motiontool.MotionToolsResponse;
import com.android.app.motiontool.PollTraceResponse;
import com.android.app.viewcapture.SimpleViewCapture;
import com.android.app.viewcapture.ViewCapture;
import com.android.app.viewcapture.data.MotionWindowData;
import com.google.protobuf.InvalidProtocolBufferException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.harmony.dalvik.ddmc.Chunk;
import org.apache.harmony.dalvik.ddmc.ChunkHandler;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DdmHandleMotionTool extends DdmHandle {
    public static DdmHandleMotionTool INSTANCE;
    public final MotionToolManager motionToolManager;
    public static final Companion Companion = new Companion(null);
    public static final int CHUNK_MOTO = ChunkHandler.type("MOTO");

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ DdmHandleMotionTool(MotionToolManager motionToolManager, DefaultConstructorMarker defaultConstructorMarker) {
        this(motionToolManager);
    }

    public static void tryCatchingMotionToolManagerExceptions(MotionToolsResponse.Builder builder, Function0 function0) {
        try {
            function0.invoke();
        } catch (UnknownTraceIdException e) {
            int traceId = e.getTraceId();
            ErrorResponse.Builder newBuilder = ErrorResponse.newBuilder();
            ErrorResponse.Code code = ErrorResponse.Code.UNKNOWN_TRACE_ID;
            newBuilder.copyOnWrite();
            ErrorResponse.access$100((ErrorResponse) newBuilder.instance, code);
            newBuilder.copyOnWrite();
            ErrorResponse.access$300((ErrorResponse) newBuilder.instance, "No running Trace found with traceId " + traceId);
            builder.setError(newBuilder);
        } catch (WindowNotFoundException e2) {
            String windowId = e2.getWindowId();
            ErrorResponse.Builder newBuilder2 = ErrorResponse.newBuilder();
            ErrorResponse.Code code2 = ErrorResponse.Code.WINDOW_NOT_FOUND;
            newBuilder2.copyOnWrite();
            ErrorResponse.access$100((ErrorResponse) newBuilder2.instance, code2);
            newBuilder2.copyOnWrite();
            ErrorResponse.access$300((ErrorResponse) newBuilder2.instance, "No window found with windowId " + windowId);
            builder.setError(newBuilder2);
        }
    }

    public final Chunk handleChunk(Chunk chunk) {
        HandshakeResponse.Status status;
        MotionToolsResponse motionToolsResponse;
        try {
            MotionToolsRequest parseFrom = MotionToolsRequest.parseFrom(DdmHandle.wrapChunk(chunk).array());
            int number = parseFrom.getTypeCase().getNumber();
            boolean z = true;
            if (number != 1) {
                if (number != 2) {
                    if (number != 3) {
                        if (number != 4) {
                            MotionToolsResponse.Builder newBuilder = MotionToolsResponse.newBuilder();
                            ErrorResponse.Builder newBuilder2 = ErrorResponse.newBuilder();
                            ErrorResponse.Code code = ErrorResponse.Code.INVALID_REQUEST;
                            newBuilder2.copyOnWrite();
                            ErrorResponse.access$100((ErrorResponse) newBuilder2.instance, code);
                            newBuilder2.copyOnWrite();
                            ErrorResponse.access$300((ErrorResponse) newBuilder2.instance, "Unknown request type");
                            newBuilder.setError(newBuilder2);
                            motionToolsResponse = (MotionToolsResponse) newBuilder.build();
                        } else {
                            final PollTraceRequest pollTrace = parseFrom.getPollTrace();
                            final MotionToolsResponse.Builder newBuilder3 = MotionToolsResponse.newBuilder();
                            tryCatchingMotionToolManagerExceptions(newBuilder3, new Function0() { // from class: com.android.app.motiontool.DdmHandleMotionTool$handlePollTraceRequest$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    MotionToolsResponse.Builder builder = MotionToolsResponse.Builder.this;
                                    PollTraceResponse.Builder newBuilder4 = PollTraceResponse.newBuilder();
                                    MotionWindowData pollTrace2 = this.motionToolManager.pollTrace(pollTrace.getTraceId());
                                    newBuilder4.copyOnWrite();
                                    PollTraceResponse.access$100((PollTraceResponse) newBuilder4.instance, pollTrace2);
                                    builder.copyOnWrite();
                                    MotionToolsResponse.access$1400((MotionToolsResponse) builder.instance, (PollTraceResponse) newBuilder4.build());
                                    return Unit.INSTANCE;
                                }
                            });
                            motionToolsResponse = (MotionToolsResponse) newBuilder3.build();
                        }
                    } else {
                        final EndTraceRequest endTrace = parseFrom.getEndTrace();
                        final MotionToolsResponse.Builder newBuilder4 = MotionToolsResponse.newBuilder();
                        tryCatchingMotionToolManagerExceptions(newBuilder4, new Function0() { // from class: com.android.app.motiontool.DdmHandleMotionTool$handleEndTraceRequest$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                MotionWindowData pollTrace2;
                                MotionToolsResponse.Builder builder = MotionToolsResponse.Builder.this;
                                EndTraceResponse.Builder newBuilder5 = EndTraceResponse.newBuilder();
                                MotionToolManager motionToolManager = this.motionToolManager;
                                int traceId = endTrace.getTraceId();
                                synchronized (motionToolManager) {
                                    Log.d("MotionToolManager", "End Trace for id: " + traceId);
                                    Object obj = ((LinkedHashMap) motionToolManager.traces).get(Integer.valueOf(traceId));
                                    if (obj != null) {
                                        pollTrace2 = motionToolManager.pollTrace(traceId);
                                        ((TraceMetadata) obj).stopTrace.invoke();
                                        motionToolManager.traces.remove(Integer.valueOf(traceId));
                                    } else {
                                        throw new UnknownTraceIdException(traceId);
                                    }
                                }
                                newBuilder5.copyOnWrite();
                                EndTraceResponse.access$100((EndTraceResponse) newBuilder5.instance, pollTrace2);
                                builder.copyOnWrite();
                                MotionToolsResponse.access$1100((MotionToolsResponse) builder.instance, (EndTraceResponse) newBuilder5.build());
                                return Unit.INSTANCE;
                            }
                        });
                        motionToolsResponse = (MotionToolsResponse) newBuilder4.build();
                    }
                } else {
                    final BeginTraceRequest beginTrace = parseFrom.getBeginTrace();
                    final MotionToolsResponse.Builder newBuilder5 = MotionToolsResponse.newBuilder();
                    tryCatchingMotionToolManagerExceptions(newBuilder5, new Function0() { // from class: com.android.app.motiontool.DdmHandleMotionTool$handleBeginTraceRequest$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i;
                            MotionToolsResponse.Builder builder = MotionToolsResponse.Builder.this;
                            BeginTraceResponse.Builder newBuilder6 = BeginTraceResponse.newBuilder();
                            MotionToolManager motionToolManager = this.motionToolManager;
                            String rootWindow = beginTrace.getWindow().getRootWindow();
                            synchronized (motionToolManager) {
                                i = motionToolManager.traceIdCounter + 1;
                                motionToolManager.traceIdCounter = i;
                                Log.d("MotionToolManager", "Begin Trace for id: " + i);
                                View rootView = motionToolManager.windowManagerGlobal.getRootView(rootWindow);
                                if (rootView != null) {
                                    final SimpleViewCapture simpleViewCapture = motionToolManager.viewCapture;
                                    simpleViewCapture.getClass();
                                    final ViewCapture.WindowListener windowListener = new ViewCapture.WindowListener(rootView, rootWindow);
                                    if (simpleViewCapture.mIsEnabled) {
                                        ViewCapture.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.app.viewcapture.ViewCapture$$ExternalSyntheticLambda6
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                ViewCapture.WindowListener windowListener2 = ViewCapture.WindowListener.this;
                                                windowListener2.mIsActive = true;
                                                if (windowListener2.mRoot.isAttachedToWindow()) {
                                                    windowListener2.mRoot.getViewTreeObserver().removeOnDrawListener(windowListener2);
                                                    windowListener2.mRoot.getViewTreeObserver().addOnDrawListener(windowListener2);
                                                } else {
                                                    windowListener2.mRoot.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.android.app.viewcapture.ViewCapture.WindowListener.1
                                                        public AnonymousClass1() {
                                                        }

                                                        @Override // android.view.View.OnAttachStateChangeListener
                                                        public final void onViewAttachedToWindow(View view) {
                                                            WindowListener windowListener3 = WindowListener.this;
                                                            if (windowListener3.mIsActive) {
                                                                windowListener3.mRoot.getViewTreeObserver().removeOnDrawListener(windowListener3);
                                                                windowListener3.mRoot.getViewTreeObserver().addOnDrawListener(windowListener3);
                                                            }
                                                            WindowListener.this.mRoot.removeOnAttachStateChangeListener(this);
                                                        }

                                                        @Override // android.view.View.OnAttachStateChangeListener
                                                        public final void onViewDetachedFromWindow(View view) {
                                                        }
                                                    });
                                                }
                                            }
                                        });
                                    }
                                    ((ArrayList) simpleViewCapture.mListeners).add(windowListener);
                                    motionToolManager.traces.put(Integer.valueOf(i), new TraceMetadata(rootWindow, 0L, new MotionToolManager$beginTrace$1(new SafeCloseable() { // from class: com.android.app.viewcapture.ViewCapture$$ExternalSyntheticLambda7
                                        public final void close() {
                                            ViewCapture viewCapture = simpleViewCapture;
                                            ViewCapture.WindowListener windowListener2 = windowListener;
                                            ((ArrayList) viewCapture.mListeners).remove(windowListener2);
                                            windowListener2.mIsActive = false;
                                            View view = windowListener2.mRoot;
                                            if (view != null) {
                                                view.getViewTreeObserver().removeOnDrawListener(windowListener2);
                                            }
                                        }
                                    })));
                                } else {
                                    throw new WindowNotFoundException(rootWindow);
                                }
                            }
                            newBuilder6.copyOnWrite();
                            BeginTraceResponse.access$100((BeginTraceResponse) newBuilder6.instance, i);
                            builder.copyOnWrite();
                            MotionToolsResponse.access$800((MotionToolsResponse) builder.instance, (BeginTraceResponse) newBuilder6.build());
                            return Unit.INSTANCE;
                        }
                    });
                    motionToolsResponse = (MotionToolsResponse) newBuilder5.build();
                }
            } else {
                HandshakeRequest handshake = parseFrom.getHandshake();
                MotionToolManager motionToolManager = this.motionToolManager;
                WindowIdentifier window = handshake.getWindow();
                synchronized (motionToolManager) {
                    if (motionToolManager.windowManagerGlobal.getRootView(window.getRootWindow()) == null) {
                        z = false;
                    }
                }
                if (z) {
                    status = HandshakeResponse.Status.OK;
                } else {
                    status = HandshakeResponse.Status.WINDOW_NOT_FOUND;
                }
                MotionToolsResponse.Builder newBuilder6 = MotionToolsResponse.newBuilder();
                HandshakeResponse.Builder newBuilder7 = HandshakeResponse.newBuilder();
                newBuilder7.copyOnWrite();
                HandshakeResponse.access$300((HandshakeResponse) newBuilder7.instance);
                newBuilder7.copyOnWrite();
                HandshakeResponse.access$100((HandshakeResponse) newBuilder7.instance, status);
                newBuilder6.copyOnWrite();
                MotionToolsResponse.access$500((MotionToolsResponse) newBuilder6.instance, (HandshakeResponse) newBuilder7.build());
                motionToolsResponse = (MotionToolsResponse) newBuilder6.build();
            }
            byte[] byteArray = motionToolsResponse.toByteArray();
            return new Chunk(CHUNK_MOTO, byteArray, 0, byteArray.length);
        } catch (InvalidProtocolBufferException unused) {
            MotionToolsResponse.Builder newBuilder8 = MotionToolsResponse.newBuilder();
            ErrorResponse.Builder newBuilder9 = ErrorResponse.newBuilder();
            ErrorResponse.Code code2 = ErrorResponse.Code.INVALID_REQUEST;
            newBuilder9.copyOnWrite();
            ErrorResponse.access$100((ErrorResponse) newBuilder9.instance, code2);
            newBuilder9.copyOnWrite();
            ErrorResponse.access$300((ErrorResponse) newBuilder9.instance, "Invalid request format (Protobuf parse exception)");
            newBuilder8.setError(newBuilder9);
            byte[] byteArray2 = ((MotionToolsResponse) newBuilder8.build()).toByteArray();
            return new Chunk(CHUNK_MOTO, byteArray2, 0, byteArray2.length);
        }
    }

    private DdmHandleMotionTool(MotionToolManager motionToolManager) {
        this.motionToolManager = motionToolManager;
    }

    public final void onConnected() {
    }

    public final void onDisconnected() {
    }
}
