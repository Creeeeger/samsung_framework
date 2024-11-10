package com.android.server.voiceinteraction;

import android.app.AppOpsManager;
import android.os.ParcelFileDescriptor;
import android.os.PersistableBundle;
import android.service.voice.HotwordAudioStream;
import android.service.voice.HotwordDetectedResult;
import android.util.Slog;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes3.dex */
public final class HotwordAudioStreamCopier {
    static final int DEFAULT_COPY_BUFFER_LENGTH_BYTES = 32768;
    static final int MAX_COPY_BUFFER_LENGTH_BYTES = 65536;
    public final AppOpsManager mAppOpsManager;
    public final int mDetectorType;
    public final ExecutorService mExecutorService = Executors.newCachedThreadPool();
    public final String mVoiceInteractorAttributionTag;
    public final String mVoiceInteractorPackageName;
    public final int mVoiceInteractorUid;

    public HotwordAudioStreamCopier(AppOpsManager appOpsManager, int i, int i2, String str, String str2) {
        this.mAppOpsManager = appOpsManager;
        this.mDetectorType = i;
        this.mVoiceInteractorUid = i2;
        this.mVoiceInteractorPackageName = str;
        this.mVoiceInteractorAttributionTag = str2;
    }

    public HotwordDetectedResult startCopyingAudioStreams(HotwordDetectedResult hotwordDetectedResult) {
        int i;
        List<HotwordAudioStream> audioStreams = hotwordDetectedResult.getAudioStreams();
        if (audioStreams.isEmpty()) {
            HotwordMetricsLogger.writeAudioEgressEvent(this.mDetectorType, 7, this.mVoiceInteractorUid, 0, 0, 0);
            return hotwordDetectedResult;
        }
        int size = audioStreams.size();
        ArrayList arrayList = new ArrayList(audioStreams.size());
        ArrayList arrayList2 = new ArrayList(audioStreams.size());
        char c = 0;
        int i2 = 0;
        int i3 = 0;
        for (HotwordAudioStream hotwordAudioStream : audioStreams) {
            ParcelFileDescriptor[] createReliablePipe = ParcelFileDescriptor.createReliablePipe();
            ParcelFileDescriptor parcelFileDescriptor = createReliablePipe[c];
            ParcelFileDescriptor parcelFileDescriptor2 = createReliablePipe[1];
            arrayList.add(hotwordAudioStream.buildUpon().setAudioStreamParcelFileDescriptor(parcelFileDescriptor).build());
            PersistableBundle metadata = hotwordAudioStream.getMetadata();
            int parcelableSize = i2 + HotwordDetectedResult.getParcelableSize(metadata);
            if (metadata.containsKey("android.service.voice.key.AUDIO_STREAM_COPY_BUFFER_LENGTH_BYTES")) {
                i = metadata.getInt("android.service.voice.key.AUDIO_STREAM_COPY_BUFFER_LENGTH_BYTES", -1);
                if (i < 1 || i > MAX_COPY_BUFFER_LENGTH_BYTES) {
                    HotwordMetricsLogger.writeAudioEgressEvent(this.mDetectorType, 9, this.mVoiceInteractorUid, 0, 0, size);
                    Slog.w("HotwordAudioStreamCopier", "Attempted to set an invalid copy buffer length (" + i + ") for: " + hotwordAudioStream);
                } else {
                    i3 += hotwordAudioStream.getInitialAudio().length;
                    arrayList2.add(new CopyTaskInfo(hotwordAudioStream.getAudioStreamParcelFileDescriptor(), parcelFileDescriptor2, i));
                    i2 = parcelableSize;
                    c = 0;
                }
            }
            i = 32768;
            i3 += hotwordAudioStream.getInitialAudio().length;
            arrayList2.add(new CopyTaskInfo(hotwordAudioStream.getAudioStreamParcelFileDescriptor(), parcelFileDescriptor2, i));
            i2 = parcelableSize;
            c = 0;
        }
        this.mExecutorService.execute(new HotwordDetectedResultCopyTask("HotwordDetectedResult@" + System.identityHashCode(hotwordDetectedResult), arrayList2, i2, i3));
        return hotwordDetectedResult.buildUpon().setAudioStreams(arrayList).build();
    }

    /* loaded from: classes3.dex */
    public class CopyTaskInfo {
        public final int mCopyBufferLength;
        public final ParcelFileDescriptor mSink;
        public final ParcelFileDescriptor mSource;

        public CopyTaskInfo(ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, int i) {
            this.mSource = parcelFileDescriptor;
            this.mSink = parcelFileDescriptor2;
            this.mCopyBufferLength = i;
        }
    }

    /* loaded from: classes3.dex */
    public class HotwordDetectedResultCopyTask implements Runnable {
        public final List mCopyTaskInfos;
        public final ExecutorService mExecutorService = Executors.newCachedThreadPool();
        public final String mResultTaskId;
        public final int mTotalInitialAudioSizeBytes;
        public final int mTotalMetadataSizeBytes;

        public HotwordDetectedResultCopyTask(String str, List list, int i, int i2) {
            this.mResultTaskId = str;
            this.mCopyTaskInfos = list;
            this.mTotalMetadataSizeBytes = i;
            this.mTotalInitialAudioSizeBytes = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Thread.currentThread().setName("Copy-" + this.mResultTaskId);
            int size = this.mCopyTaskInfos.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                CopyTaskInfo copyTaskInfo = (CopyTaskInfo) this.mCopyTaskInfos.get(i);
                arrayList.add(new SingleAudioStreamCopyTask(this.mResultTaskId + "@" + i, copyTaskInfo.mSource, copyTaskInfo.mSink, copyTaskInfo.mCopyBufferLength, HotwordAudioStreamCopier.this.mDetectorType, HotwordAudioStreamCopier.this.mVoiceInteractorUid));
            }
            try {
                if (HotwordAudioStreamCopier.this.mAppOpsManager.startOpNoThrow("android:record_audio_hotword", HotwordAudioStreamCopier.this.mVoiceInteractorUid, HotwordAudioStreamCopier.this.mVoiceInteractorPackageName, HotwordAudioStreamCopier.this.mVoiceInteractorAttributionTag, "Streaming hotword audio to VoiceInteractionService") == 0) {
                    try {
                        HotwordMetricsLogger.writeAudioEgressEvent(HotwordAudioStreamCopier.this.mDetectorType, 1, HotwordAudioStreamCopier.this.mVoiceInteractorUid, this.mTotalInitialAudioSizeBytes, this.mTotalMetadataSizeBytes, size);
                        this.mExecutorService.invokeAll(arrayList);
                        int i2 = this.mTotalInitialAudioSizeBytes;
                        Iterator it = arrayList.iterator();
                        int i3 = i2;
                        while (it.hasNext()) {
                            i3 += ((SingleAudioStreamCopyTask) it.next()).mTotalCopiedBytes;
                        }
                        Slog.i("HotwordAudioStreamCopier", this.mResultTaskId + ": Task was completed. Total bytes egressed: " + i3 + " (including " + this.mTotalInitialAudioSizeBytes + " bytes NOT streamed), total metadata bundle size bytes: " + this.mTotalMetadataSizeBytes);
                        HotwordMetricsLogger.writeAudioEgressEvent(HotwordAudioStreamCopier.this.mDetectorType, 2, HotwordAudioStreamCopier.this.mVoiceInteractorUid, i3, this.mTotalMetadataSizeBytes, size);
                    } catch (InterruptedException e) {
                        int i4 = this.mTotalInitialAudioSizeBytes;
                        Iterator it2 = arrayList.iterator();
                        int i5 = i4;
                        while (it2.hasNext()) {
                            i5 += ((SingleAudioStreamCopyTask) it2.next()).mTotalCopiedBytes;
                        }
                        HotwordMetricsLogger.writeAudioEgressEvent(HotwordAudioStreamCopier.this.mDetectorType, 3, HotwordAudioStreamCopier.this.mVoiceInteractorUid, i5, this.mTotalMetadataSizeBytes, size);
                        Slog.i("HotwordAudioStreamCopier", this.mResultTaskId + ": Task was interrupted. Total bytes egressed: " + i5 + " (including " + this.mTotalInitialAudioSizeBytes + " bytes NOT streamed), total metadata bundle size bytes: " + this.mTotalMetadataSizeBytes);
                        bestEffortPropagateError(e.getMessage());
                    }
                    return;
                }
                HotwordMetricsLogger.writeAudioEgressEvent(HotwordAudioStreamCopier.this.mDetectorType, 4, HotwordAudioStreamCopier.this.mVoiceInteractorUid, 0, 0, size);
                bestEffortPropagateError("Failed to obtain RECORD_AUDIO_HOTWORD permission for voice interactor with uid=" + HotwordAudioStreamCopier.this.mVoiceInteractorUid + " packageName=" + HotwordAudioStreamCopier.this.mVoiceInteractorPackageName + " attributionTag=" + HotwordAudioStreamCopier.this.mVoiceInteractorAttributionTag);
            } finally {
                HotwordAudioStreamCopier.this.mAppOpsManager.finishOp("android:record_audio_hotword", HotwordAudioStreamCopier.this.mVoiceInteractorUid, HotwordAudioStreamCopier.this.mVoiceInteractorPackageName, HotwordAudioStreamCopier.this.mVoiceInteractorAttributionTag);
            }
        }

        public final void bestEffortPropagateError(String str) {
            try {
                for (CopyTaskInfo copyTaskInfo : this.mCopyTaskInfos) {
                    copyTaskInfo.mSource.closeWithError(str);
                    copyTaskInfo.mSink.closeWithError(str);
                }
                HotwordMetricsLogger.writeAudioEgressEvent(HotwordAudioStreamCopier.this.mDetectorType, 10, HotwordAudioStreamCopier.this.mVoiceInteractorUid, 0, 0, this.mCopyTaskInfos.size());
            } catch (IOException e) {
                Slog.e("HotwordAudioStreamCopier", this.mResultTaskId + ": Failed to propagate error", e);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class SingleAudioStreamCopyTask implements Callable {
        public final ParcelFileDescriptor mAudioSink;
        public final ParcelFileDescriptor mAudioSource;
        public final int mCopyBufferLength;
        public final int mDetectorType;
        public final String mStreamTaskId;
        public volatile int mTotalCopiedBytes = 0;
        public final int mUid;

        public SingleAudioStreamCopyTask(String str, ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, int i, int i2, int i3) {
            this.mStreamTaskId = str;
            this.mAudioSource = parcelFileDescriptor;
            this.mAudioSink = parcelFileDescriptor2;
            this.mCopyBufferLength = i;
            this.mDetectorType = i2;
            this.mUid = i3;
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x00bf, code lost:
        
            if (r3 != null) goto L31;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00ce  */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Thread] */
        /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r2v2 */
        /* JADX WARN: Type inference failed for: r2v3 */
        /* JADX WARN: Type inference failed for: r2v4, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v5, types: [android.os.ParcelFileDescriptor$AutoCloseInputStream, java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r3v12 */
        /* JADX WARN: Type inference failed for: r3v2 */
        /* JADX WARN: Type inference failed for: r3v4, types: [java.io.OutputStream] */
        @Override // java.util.concurrent.Callable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Void call() {
            /*
                r12 = this;
                java.lang.String r0 = "HotwordAudioStreamCopier"
                java.lang.Thread r1 = java.lang.Thread.currentThread()
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "Copy-"
                r2.append(r3)
                java.lang.String r3 = r12.mStreamTaskId
                r2.append(r3)
                java.lang.String r2 = r2.toString()
                r1.setName(r2)
                r1 = 0
                android.os.ParcelFileDescriptor$AutoCloseInputStream r2 = new android.os.ParcelFileDescriptor$AutoCloseInputStream     // Catch: java.lang.Throwable -> L80 java.io.IOException -> L83
                android.os.ParcelFileDescriptor r3 = r12.mAudioSource     // Catch: java.lang.Throwable -> L80 java.io.IOException -> L83
                r2.<init>(r3)     // Catch: java.lang.Throwable -> L80 java.io.IOException -> L83
                android.os.ParcelFileDescriptor$AutoCloseOutputStream r3 = new android.os.ParcelFileDescriptor$AutoCloseOutputStream     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7d
                android.os.ParcelFileDescriptor r4 = r12.mAudioSink     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7d
                r3.<init>(r4)     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7d
                int r4 = r12.mCopyBufferLength     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                byte[] r4 = new byte[r4]     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
            L2f:
                boolean r5 = java.lang.Thread.interrupted()     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                if (r5 == 0) goto L4c
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                r4.<init>()     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                java.lang.String r5 = r12.mStreamTaskId     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                r4.append(r5)     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                java.lang.String r5 = ": SingleAudioStreamCopyTask task was interrupted"
                r4.append(r5)     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                java.lang.String r4 = r4.toString()     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                android.util.Slog.e(r0, r4)     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                goto L68
            L4c:
                int r5 = r2.read(r4)     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                if (r5 >= 0) goto L6c
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                r4.<init>()     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                java.lang.String r5 = r12.mStreamTaskId     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                r4.append(r5)     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                java.lang.String r5 = ": Reached end of audio stream"
                r4.append(r5)     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                java.lang.String r4 = r4.toString()     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                android.util.Slog.i(r0, r4)     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
            L68:
                r2.close()
                goto Lc1
            L6c:
                if (r5 <= 0) goto L2f
                r6 = 0
                r3.write(r4, r6, r5)     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                int r6 = r12.mTotalCopiedBytes     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                int r6 = r6 + r5
                r12.mTotalCopiedBytes = r6     // Catch: java.io.IOException -> L78 java.lang.Throwable -> Lc5
                goto L2f
            L78:
                r4 = move-exception
                goto L86
            L7a:
                r12 = move-exception
                r3 = r1
                goto Lc6
            L7d:
                r4 = move-exception
                r3 = r1
                goto L86
            L80:
                r12 = move-exception
                r3 = r1
                goto Lc7
            L83:
                r4 = move-exception
                r2 = r1
                r3 = r2
            L86:
                android.os.ParcelFileDescriptor r5 = r12.mAudioSource     // Catch: java.lang.Throwable -> Lc5
                java.lang.String r6 = r4.getMessage()     // Catch: java.lang.Throwable -> Lc5
                r5.closeWithError(r6)     // Catch: java.lang.Throwable -> Lc5
                android.os.ParcelFileDescriptor r5 = r12.mAudioSink     // Catch: java.lang.Throwable -> Lc5
                java.lang.String r6 = r4.getMessage()     // Catch: java.lang.Throwable -> Lc5
                r5.closeWithError(r6)     // Catch: java.lang.Throwable -> Lc5
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc5
                r5.<init>()     // Catch: java.lang.Throwable -> Lc5
                java.lang.String r6 = r12.mStreamTaskId     // Catch: java.lang.Throwable -> Lc5
                r5.append(r6)     // Catch: java.lang.Throwable -> Lc5
                java.lang.String r6 = ": Failed to copy audio stream"
                r5.append(r6)     // Catch: java.lang.Throwable -> Lc5
                java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> Lc5
                android.util.Slog.i(r0, r5, r4)     // Catch: java.lang.Throwable -> Lc5
                int r6 = r12.mDetectorType     // Catch: java.lang.Throwable -> Lc5
                r7 = 10
                int r8 = r12.mUid     // Catch: java.lang.Throwable -> Lc5
                r9 = 0
                r10 = 0
                r11 = 0
                com.android.server.voiceinteraction.HotwordMetricsLogger.writeAudioEgressEvent(r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> Lc5
                if (r2 == 0) goto Lbf
                r2.close()
            Lbf:
                if (r3 == 0) goto Lc4
            Lc1:
                r3.close()
            Lc4:
                return r1
            Lc5:
                r12 = move-exception
            Lc6:
                r1 = r2
            Lc7:
                if (r1 == 0) goto Lcc
                r1.close()
            Lcc:
                if (r3 == 0) goto Ld1
                r3.close()
            Ld1:
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.voiceinteraction.HotwordAudioStreamCopier.SingleAudioStreamCopyTask.call():java.lang.Void");
        }
    }
}
