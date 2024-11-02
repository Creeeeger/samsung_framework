package com.samsung.android.sume.core.controller;

import com.samsung.android.sume.core.buffer.MediaBuffer;
import com.samsung.android.sume.core.message.Event;
import com.samsung.android.sume.core.message.Request;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public interface MediaController<T> {

    /* loaded from: classes4.dex */
    public interface OnEventListener {
        void onEvent(Event event);
    }

    void release();

    T request(Request request);

    T run(List<MediaBuffer> list, List<MediaBuffer> list2);

    void setOnEventListener(OnEventListener onEventListener);

    /* renamed from: com.samsung.android.sume.core.controller.MediaController$1 */
    /* loaded from: classes4.dex */
    class AnonymousClass1 extends ArrayList<MediaBuffer> {
        final /* synthetic */ MediaBuffer val$mediabuffer;

        AnonymousClass1(MediaBuffer mediaBuffer) {
            this.val$mediabuffer = mediaBuffer;
            add(mediaBuffer);
        }
    }

    default T run(MediaBuffer mediabuffer) {
        return run(new ArrayList<MediaBuffer>(mediabuffer) { // from class: com.samsung.android.sume.core.controller.MediaController.1
            final /* synthetic */ MediaBuffer val$mediabuffer;

            AnonymousClass1(MediaBuffer mediabuffer2) {
                this.val$mediabuffer = mediabuffer2;
                add(mediabuffer2);
            }
        }, new ArrayList());
    }

    /* renamed from: com.samsung.android.sume.core.controller.MediaController$2 */
    /* loaded from: classes4.dex */
    class AnonymousClass2 extends ArrayList<MediaBuffer> {
        final /* synthetic */ MediaBuffer val$inBuffer;

        AnonymousClass2(MediaBuffer mediaBuffer) {
            this.val$inBuffer = mediaBuffer;
            add(mediaBuffer);
        }
    }

    /* renamed from: com.samsung.android.sume.core.controller.MediaController$3 */
    /* loaded from: classes4.dex */
    class AnonymousClass3 extends ArrayList<MediaBuffer> {
        final /* synthetic */ MediaBuffer val$outBuffer;

        AnonymousClass3(MediaBuffer mediaBuffer) {
            this.val$outBuffer = mediaBuffer;
            add(mediaBuffer);
        }
    }

    default T run(MediaBuffer inBuffer, MediaBuffer outBuffer) {
        return run(new ArrayList<MediaBuffer>(inBuffer) { // from class: com.samsung.android.sume.core.controller.MediaController.2
            final /* synthetic */ MediaBuffer val$inBuffer;

            AnonymousClass2(MediaBuffer inBuffer2) {
                this.val$inBuffer = inBuffer2;
                add(inBuffer2);
            }
        }, new ArrayList<MediaBuffer>(outBuffer) { // from class: com.samsung.android.sume.core.controller.MediaController.3
            final /* synthetic */ MediaBuffer val$outBuffer;

            AnonymousClass3(MediaBuffer outBuffer2) {
                this.val$outBuffer = outBuffer2;
                add(outBuffer2);
            }
        });
    }

    default T run(List<MediaBuffer> inBuffers) {
        return run(inBuffers, new ArrayList());
    }
}
