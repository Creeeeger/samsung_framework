package com.samsung.android.media.convert.core;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.SemSystemProperties;
import android.provider.MediaStore;
import android.sec.enterprise.content.SecContentProviderURI;
import android.util.Log;
import android.view.Surface;
import com.samsung.android.media.convert.surfaces.InputSurface;
import com.samsung.android.media.convert.surfaces.OutputSurface;
import com.samsung.android.media.convert.util.CodecsHelper;
import com.samsung.android.media.convert.util.Constants;
import com.samsung.android.wallpaperbackup.BnRConstants;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes5.dex */
public class ConvertVideo extends Convert {
    protected static final int HAL_PIXEL_FORMAT_EXYNOS_YCbCr_420_SP_M = 261;
    private static final int HEADER_SIZE = 500;
    private static final int IMAGE_WAIT_TIMEOUT_MS = 1000;
    private static final String KEY_ERROR_TYPE = "error-type";
    private static final String KEY_MUXER_AUTHOR = "param-meta-author";
    private static final String KEY_MUXER_RECORDINGMODE = "param-meta-recording-mode";
    private static final String KEY_MUXER_TRANSCODING = "param-meta-transcoding";
    protected static final int OMX_QCOM_COLOR_FormatYUV420PackedSemiPlanar32m = 2141391876;
    private static final int REWRITE_AUDIO_BUFFER_SIZE = 131072;
    private static final long TIMEOUT_USEC = 10000;
    private static final int VIDEO_FPS_BUF_COUNT = 5;
    private MediaFormat inputAudioFormat;
    private MediaExtractor mAudioExtractor;
    private Context mContext;
    private boolean mCopyAudio;
    private String mInputFilePath;
    private InputSurface mInputSurface;
    private Uri mInputUri;
    private OutputSurface mOutputSurface;
    private long mTrimAudioEndUs;
    private long mTrimAudioStartUs;
    private long mTrimVideoEndUs;
    private long mTrimVideoStartUs;
    private MediaExtractor mVideoExtractor;
    private static boolean mUseUri = false;
    private static byte[] creationTime = new byte[4];
    private int mInputOrientationDegrees = 0;
    private Object mStopLock = new Object();
    private int mVideoFrameCount = 0;
    private boolean formatupdated = false;
    private boolean mUpdateCreationTime = false;
    private int mInputBitdepth = 8;
    private int mAuthor = -1;
    private int mHDRType = 0;
    private int mRecordingMode = 1;
    private boolean skipBufferInfo = false;
    private boolean isCcodec = false;

    public boolean initialize(String outputFilePath, String inputFilePath) {
        if (outputFilePath == null) {
            Log.e(Constants.TAG, "output file path cannot be null");
            return false;
        }
        if (inputFilePath == null) {
            Log.e(Constants.TAG, "input file path cannot be null");
            return false;
        }
        mUseUri = false;
        if (!CheckVideoFormat(inputFilePath)) {
            Log.e(Constants.TAG, "Not a valid video format.");
            return false;
        }
        if (!CheckVideoCodec(inputFilePath, false)) {
            Log.e(Constants.TAG, "Not a valid video codec.");
            return false;
        }
        this.mOutputFilePath = outputFilePath;
        this.mInputFilePath = inputFilePath;
        return true;
    }

    public boolean initialize(String outputFilePath, Context context, Uri inputUri) {
        if (outputFilePath == null) {
            Log.e(Constants.TAG, "output file path cannot be null");
            return false;
        }
        if (inputUri == null) {
            Log.e(Constants.TAG, "input uri cannot be null");
            return false;
        }
        if (context == null) {
            Log.e(Constants.TAG, "context cannot be null");
            return false;
        }
        mUseUri = true;
        if (!CheckVideoFormat(context, inputUri)) {
            Log.e(Constants.TAG, "Not a valid video format.");
            return false;
        }
        if (!CheckVideoCodec(context, inputUri, false)) {
            Log.e(Constants.TAG, "Not a valid video codec.");
            return false;
        }
        this.mOutputFilePath = outputFilePath;
        this.mInputUri = inputUri;
        this.mContext = context;
        return true;
    }

    @Override // com.samsung.android.media.convert.core.Convert
    protected boolean prepare() {
        if (this.mConverting) {
            Log.d(Constants.TAG, "already started converting");
            return false;
        }
        if (mUseUri) {
            if (this.mContext == null || this.mInputUri == null) {
                Log.d(Constants.TAG, "mInputUri or mContext  is NULL");
                return false;
            }
            return true;
        }
        if (this.mInputFilePath == null) {
            Log.d(Constants.TAG, "mInputFilePath is NULL");
            return false;
        }
        return true;
    }

    protected boolean prepareVideoCodec() {
        int width;
        int height;
        int x;
        int y;
        MediaMetadataRetriever metaData = new MediaMetadataRetriever();
        try {
            try {
                if (mUseUri) {
                    metaData.setDataSource(this.mContext, this.mInputUri);
                } else {
                    metaData.setDataSource(this.mInputFilePath);
                }
                String inputOrientation = metaData.extractMetadata(24);
                String auth = metaData.extractMetadata(1015);
                if (inputOrientation != null) {
                    int degree = 0;
                    try {
                        degree = Integer.parseInt(inputOrientation);
                    } catch (NumberFormatException e) {
                        e.printStackTrace();
                    }
                    switch (degree) {
                        case 0:
                            this.mInputOrientationDegrees = 0;
                            break;
                        case 90:
                            this.mInputOrientationDegrees = 90;
                            break;
                        case 180:
                            this.mInputOrientationDegrees = 180;
                            break;
                        case 270:
                            this.mInputOrientationDegrees = 270;
                            break;
                    }
                } else {
                    this.mInputOrientationDegrees = 0;
                }
                if (auth != null) {
                    this.mAuthor = Integer.parseInt(auth);
                }
            } finally {
                metaData.release();
            }
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
        }
        try {
            if (mUseUri) {
                this.mVideoExtractor = CodecsHelper.createExtractor(this.mContext, this.mInputUri);
            } else {
                this.mVideoExtractor = CodecsHelper.createExtractor(this.mInputFilePath);
            }
            int videoTrack = CodecsHelper.getAndSelectVideoTrackIndex(this.mVideoExtractor);
            MediaFormat inputFormat = this.mVideoExtractor.getTrackFormat(videoTrack);
            inputFormat.setInteger("force-hdr2sdr-enable", 1);
            inputFormat.setInteger("HDR-OFF", 1);
            this.isCcodec = false;
            if (!CodecsHelper.isSupportOMX()) {
                Log.d(Constants.TAG, "use c2 codec - filter");
                this.isCcodec = true;
                String chipName = SemSystemProperties.get("ro.hardware.chipname").toLowerCase();
                String boardName = SemSystemProperties.get("ro.product.board").toLowerCase();
                String socModelName = SemSystemProperties.get("ro.soc.model").toLowerCase();
                String chipset = chipName;
                if (chipset == null || chipset.equals("")) {
                    chipset = boardName;
                }
                if (chipset == null || chipset.equals("")) {
                    chipset = socModelName;
                }
                if (chipset != null) {
                    if (chipset.contains("exynos") || chipset.contains("s5e")) {
                        inputFormat.setInteger("vendor.sec-dec-output.image-convert.value", 1);
                        inputFormat.setInteger("vendor.sec-ext-imageformat-filter-enableInplace.value", 0);
                        inputFormat.setInteger("vendor.sec-dec-output.image-convert-pixel-format.value", 261);
                    } else {
                        inputFormat.setInteger("vendor.qti-ext-dec-forceNonUBWC.value", 1);
                        inputFormat.setInteger("vendor.qti-ext-imageformat-filter-enabled.value", 1);
                        inputFormat.setInteger("vendor.qti-ext-imageformat-filter-enableInplace.value", 0);
                        inputFormat.setInteger("vendor.qti-ext-imageformat-filter-clientcolorformat.value", OMX_QCOM_COLOR_FormatYUV420PackedSemiPlanar32m);
                    }
                }
            }
            Log.d(Constants.TAG, "input video format: " + inputFormat);
            if (this.mTrimVideoEndUs == 0) {
                this.mTrimVideoEndUs = inputFormat.getLong(MediaFormat.KEY_DURATION);
                Log.d(Constants.TAG, "mTrimVideoEndUs was 0 but updated  mTrimVideoEndUs : " + this.mTrimVideoEndUs);
            }
            this.mSourceFrameRate = 0;
            try {
                this.mSourceFrameRate = inputFormat.getInteger(MediaFormat.KEY_FRAME_RATE);
            } catch (Exception e3) {
            }
            if (this.mSourceFrameRate == 0 || this.mSourceFrameRate > 250) {
                this.mSourceFrameRate = getVideoFramerate(this.mInputFilePath, this.mContext, this.mInputUri);
            }
            this.mOutputVideoFrameRate = this.mSourceFrameRate;
            Log.d(Constants.TAG, "mSourceFrameRate :" + this.mSourceFrameRate + ", mOutputVideoFrameRate :" + this.mOutputVideoFrameRate);
            this.mOutputVideoBitRate = CodecsHelper.suggestBitRate(this.mOutputWidth, this.mOutputHeight, this.mOutputVideoFrameRate) * 1000;
            MediaFormat outputVideoFormat = MediaFormat.createVideoFormat(this.mOutputVideoMimeType, this.mOutputWidth, this.mOutputHeight);
            outputVideoFormat.setInteger(MediaFormat.KEY_COLOR_FORMAT, MediaCodecInfo.CodecCapabilities.COLOR_FormatSurface);
            outputVideoFormat.setInteger(MediaFormat.KEY_BIT_RATE, this.mOutputVideoBitRate);
            outputVideoFormat.setInteger(MediaFormat.KEY_FRAME_RATE, this.mOutputVideoFrameRate);
            outputVideoFormat.setInteger(MediaFormat.KEY_I_FRAME_INTERVAL, this.mOutputVideoIFrameInterval);
            outputVideoFormat.setInteger("priority", 1);
            Log.d(Constants.TAG, "output video format " + outputVideoFormat);
            try {
                this.mOutputVideoEncoder = MediaCodec.createEncoderByType(this.mOutputVideoMimeType);
                this.mOutputVideoEncoder.configure(outputVideoFormat, (Surface) null, (MediaCrypto) null, 1);
                this.mInputSurface = new InputSurface(this.mOutputVideoEncoder.createInputSurface());
                this.mOutputVideoEncoder.start();
                this.mInputSurface.makeCurrent();
                try {
                    int origin_width = inputFormat.getInteger("width");
                    int origin_height = inputFormat.getInteger("height");
                    float originAspectRatio = origin_width / origin_height;
                    float targetAspectRatio = this.mOutputWidth / this.mOutputHeight;
                    if (originAspectRatio > targetAspectRatio) {
                        int width2 = this.mOutputWidth;
                        int height2 = (this.mOutputWidth * origin_height) / origin_width;
                        width = width2;
                        height = height2;
                        x = 0;
                        y = (this.mOutputHeight - height2) / 2;
                    } else {
                        int width3 = this.mOutputHeight;
                        int width4 = (this.mOutputHeight * origin_width) / origin_height;
                        int x2 = (this.mOutputWidth - width4) / 2;
                        width = width4;
                        height = width3;
                        x = x2;
                        y = 0;
                    }
                    this.mOutputSurface = new OutputSurface(this.mInputOrientationDegrees, x, y, width, height, origin_width, origin_height, false);
                } catch (Exception e4) {
                    Log.d(Constants.TAG, "Can't get input video resolution");
                    this.mOutputSurface = new OutputSurface(this.mInputOrientationDegrees);
                }
                try {
                    this.mInputVideoDecoder = CodecsHelper.createVideoDecoder(inputFormat, this.mOutputSurface.getSurface());
                } catch (Exception e5) {
                }
                if (this.mInputVideoDecoder == null) {
                    Log.d(Constants.TAG, "can't set VideoDecoder");
                    return false;
                }
                return true;
            } catch (Exception e6) {
                Log.d(Constants.TAG, "createEncoder error");
                return false;
            }
        } catch (IOException e7) {
            Log.d(Constants.TAG, "createExtractor error");
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x02f9 A[Catch: Exception -> 0x0350, TryCatch #0 {Exception -> 0x0350, blocks: (B:39:0x02ed, B:41:0x02f9, B:42:0x02fc, B:44:0x0332, B:45:0x0336, B:47:0x033c, B:49:0x0347), top: B:38:0x02ed }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0332 A[Catch: Exception -> 0x0350, TryCatch #0 {Exception -> 0x0350, blocks: (B:39:0x02ed, B:41:0x02f9, B:42:0x02fc, B:44:0x0332, B:45:0x0336, B:47:0x033c, B:49:0x0347), top: B:38:0x02ed }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x033c A[Catch: Exception -> 0x0350, TryCatch #0 {Exception -> 0x0350, blocks: (B:39:0x02ed, B:41:0x02f9, B:42:0x02fc, B:44:0x0332, B:45:0x0336, B:47:0x033c, B:49:0x0347), top: B:38:0x02ed }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0347 A[Catch: Exception -> 0x0350, TRY_LEAVE, TryCatch #0 {Exception -> 0x0350, blocks: (B:39:0x02ed, B:41:0x02f9, B:42:0x02fc, B:44:0x0332, B:45:0x0336, B:47:0x033c, B:49:0x0347), top: B:38:0x02ed }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected boolean prepareAudioCodec() {
        /*
            Method dump skipped, instructions count: 863
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.media.convert.core.ConvertVideo.prepareAudioCodec():boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:267:0x0317, code lost:            throw new java.lang.RuntimeException(r0);     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x06fd, code lost:            if (r3 == false) goto L302;     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0701, code lost:            if (r52.mUserStop != false) goto L337;     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0703, code lost:            if (r21 == false) goto L338;     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0705, code lost:            android.util.Log.d(com.samsung.android.media.convert.util.Constants.TAG, "Encoding finished.");     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x070a, code lost:            return;     */
    /* JADX WARN: Code restructure failed: missing block: B:52:?, code lost:            return;     */
    /* JADX WARN: Code restructure failed: missing block: B:53:?, code lost:            return;     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x070b, code lost:            return;     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x03f5  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x070c A[LOOP:1: B:42:0x00ea->B:157:0x070c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x06f5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0679  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x01d0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0354  */
    @Override // com.samsung.android.media.convert.core.Convert
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void startConverting() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1816
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.media.convert.core.ConvertVideo.startConverting():void");
    }

    @Override // com.samsung.android.media.convert.core.Convert
    protected void release() {
        try {
            Log.d(Constants.TAG, "releasing encoder objects");
            if (this.mOutputVideoEncoder != null) {
                try {
                    this.mOutputVideoEncoder.stop();
                    this.mOutputVideoEncoder.release();
                    this.mOutputVideoEncoder = null;
                } catch (Exception e) {
                    Log.d(Constants.TAG, "Exception in releasing output video encoder.");
                    e.printStackTrace();
                }
            }
            if (this.mInputVideoDecoder != null) {
                try {
                    this.mInputVideoDecoder.stop();
                    this.mInputVideoDecoder.release();
                    this.mInputVideoDecoder = null;
                } catch (Exception e2) {
                    Log.d(Constants.TAG, "Exception in releasing input video decoder.");
                    e2.printStackTrace();
                }
            }
            MediaExtractor mediaExtractor = this.mVideoExtractor;
            if (mediaExtractor != null) {
                try {
                    mediaExtractor.release();
                    this.mVideoExtractor = null;
                } catch (Exception e3) {
                    Log.d(Constants.TAG, "Exception in releasing video extractor.");
                    e3.printStackTrace();
                }
            }
            OutputSurface outputSurface = this.mOutputSurface;
            if (outputSurface != null) {
                try {
                    outputSurface.release();
                    this.mOutputSurface = null;
                } catch (Exception e4) {
                    Log.d(Constants.TAG, "Exception in releasing outputSurface.");
                    e4.printStackTrace();
                }
            }
            InputSurface inputSurface = this.mInputSurface;
            if (inputSurface != null) {
                try {
                    inputSurface.release();
                    this.mInputSurface = null;
                } catch (Exception e5) {
                    Log.d(Constants.TAG, "Exception in releasing input surface.");
                    e5.printStackTrace();
                }
            }
            if (this.mOutputAudioEncoder != null) {
                try {
                    this.mOutputAudioEncoder.stop();
                    this.mOutputAudioEncoder.release();
                    this.mOutputAudioEncoder = null;
                } catch (Exception e6) {
                    Log.d(Constants.TAG, "Exception in releasing output audio encoder.");
                    e6.printStackTrace();
                }
            }
            if (this.mInputAudioDecoder != null) {
                try {
                    this.mInputAudioDecoder.stop();
                    this.mInputAudioDecoder.release();
                    this.mInputAudioDecoder = null;
                } catch (Exception e7) {
                    Log.d(Constants.TAG, "Exception in releasing input audio decoder.");
                    e7.printStackTrace();
                }
            }
            MediaExtractor mediaExtractor2 = this.mAudioExtractor;
            if (mediaExtractor2 != null) {
                try {
                    mediaExtractor2.release();
                    this.mAudioExtractor = null;
                } catch (Exception e8) {
                    Log.d(Constants.TAG, "Exception in releasing audio extractor.");
                    e8.printStackTrace();
                }
            }
            if (this.mMuxer != null) {
                try {
                    if (this.mMuxerStarted) {
                        this.mMuxer.stop();
                    }
                    this.mMuxer.release();
                    this.mMuxer = null;
                } catch (Exception e9) {
                    Log.d(Constants.TAG, "Exception in releasing muxer.");
                    e9.printStackTrace();
                }
            }
            if (this.mUpdateCreationTime) {
                updateCreationTime(this.mOutputFilePath, true);
            }
            synchronized (this.mStopLock) {
                this.mConverting = false;
                this.mStopLock.notifyAll();
            }
        } catch (Throwable th) {
            synchronized (this.mStopLock) {
                this.mConverting = false;
                this.mStopLock.notifyAll();
                throw th;
            }
        }
    }

    @Override // com.samsung.android.media.convert.core.Convert
    public boolean stop() {
        Log.d(Constants.TAG, "Stop method called  mConverting :" + this.mConverting + ", mUserStop :" + this.mUserStop);
        if (!this.mConverting || this.mUserStop) {
            return false;
        }
        synchronized (this.mStopLock) {
            OutputSurface outputSurface = this.mOutputSurface;
            if (outputSurface != null) {
                outputSurface.notifyFrameSyncObject();
            }
            this.mUserStop = true;
            if (this.mThread != null) {
                this.mThread.interrupt();
            }
            if (!this.mConverting) {
                return false;
            }
            try {
                try {
                    Log.d(Constants.TAG, "Calling wait on stop lock.");
                    this.mStopLock.wait(5000L);
                } catch (InterruptedException e) {
                    Log.d(Constants.TAG, "Stop lock interrupted.");
                    e.printStackTrace();
                    Log.d(Constants.TAG, "Stop method finally  mConverting :" + this.mConverting);
                    if (this.mConverting) {
                    }
                    return true;
                }
            } finally {
                Log.d(Constants.TAG, "Stop method finally  mConverting :" + this.mConverting);
                if (this.mConverting) {
                    release();
                }
            }
        }
    }

    public int getOutputFileSize() {
        MediaExtractor me;
        try {
            if (mUseUri) {
                me = CodecsHelper.createExtractor(this.mContext, this.mInputUri);
            } else {
                me = CodecsHelper.createExtractor(this.mInputFilePath);
            }
            int videoTrack = CodecsHelper.getAndSelectVideoTrackIndex(me);
            MediaFormat inputFormat = me.getTrackFormat(videoTrack);
            long trimEndTime = this.mTrimVideoEndUs;
            if (trimEndTime == 0) {
                trimEndTime = inputFormat.getLong(MediaFormat.KEY_DURATION);
                Log.d(Constants.TAG, "getOutputFileSize  trimEndTime was 0 but updated  trimEndTime : " + trimEndTime);
            }
            this.mSourceFrameRate = 0;
            this.mSourceFrameRate = inputFormat.getInteger(MediaFormat.KEY_FRAME_RATE);
            if (this.mSourceFrameRate == 0 || this.mSourceFrameRate > 250) {
                this.mSourceFrameRate = getVideoFramerate(this.mInputFilePath, this.mContext, this.mInputUri);
            }
            if (this.mSourceFrameRate > 0) {
                this.mOutputVideoFrameRate = this.mSourceFrameRate;
            }
            Log.d(Constants.TAG, "mSourceFrameRate :" + this.mSourceFrameRate + ", mOutputVideoFrameRate :" + this.mOutputVideoFrameRate);
            me.release();
            int outputVideBitRate = CodecsHelper.suggestBitRate(this.mOutputWidth, this.mOutputHeight, this.mOutputVideoFrameRate) * 1000;
            int size = (int) (((trimEndTime - this.mTrimVideoStartUs) / 8000000.0d) * ((this.mOutputAudioBitRate + outputVideBitRate) / 1000.0d));
            return ((int) this.mSizeFraction) * size;
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        } catch (NullPointerException e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0043, code lost:            if (r5 != null) goto L33;     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x005b, code lost:            if (0 == 0) goto L34;     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean CheckVideoCodec(java.lang.String r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.media.convert.core.ConvertVideo.CheckVideoCodec(java.lang.String, boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0043, code lost:            if (r5 != null) goto L33;     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x005b, code lost:            if (0 == 0) goto L34;     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean CheckVideoCodec(android.content.Context r11, android.net.Uri r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.media.convert.core.ConvertVideo.CheckVideoCodec(android.content.Context, android.net.Uri, boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:            if (r1 != null) goto L25;     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0046, code lost:            return r2;     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:            r1.release();     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x003f, code lost:            if (r1 == null) goto L26;     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean CheckVideoFormat(java.lang.String r7) {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
            r2 = 1
            android.media.MediaExtractor r3 = com.samsung.android.media.convert.util.CodecsHelper.createExtractor(r7)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            r0 = r3
            android.media.MediaMetadataRetriever r3 = com.samsung.android.media.convert.util.CodecsHelper.createMediaMetadataRetriever(r7)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            r1 = r3
            int r3 = com.samsung.android.media.convert.util.CodecsHelper.getAndSelectVideoTrackIndex(r0)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            r4 = -1
            if (r3 == r4) goto L1a
            boolean r4 = com.samsung.android.media.convert.util.CodecsHelper.isSupportedFormat(r1)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            if (r4 != 0) goto L22
        L1a:
            java.lang.String r4 = "SemVideoConverter"
            java.lang.String r5 = "Video Format is not supported"
            android.util.Log.d(r4, r5)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            r2 = 0
        L22:
            boolean r4 = r6.getHDRMode(r1)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            if (r4 != 0) goto L29
            r2 = 0
        L29:
            if (r0 == 0) goto L2e
            r0.release()
        L2e:
            r0 = 0
            if (r1 == 0) goto L44
            goto L41
        L32:
            r3 = move-exception
            goto L47
        L34:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L32
            r2 = 0
            if (r0 == 0) goto L3e
            r0.release()
        L3e:
            r0 = 0
            if (r1 == 0) goto L44
        L41:
            r1.release()
        L44:
            r1 = 0
            return r2
        L47:
            if (r0 == 0) goto L4c
            r0.release()
        L4c:
            r0 = 0
            if (r1 == 0) goto L52
            r1.release()
        L52:
            r1 = 0
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.media.convert.core.ConvertVideo.CheckVideoFormat(java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:            if (r1 != null) goto L25;     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0046, code lost:            return r2;     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:            r1.release();     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x003f, code lost:            if (r1 == null) goto L26;     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean CheckVideoFormat(android.content.Context r7, android.net.Uri r8) {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
            r2 = 1
            android.media.MediaExtractor r3 = com.samsung.android.media.convert.util.CodecsHelper.createExtractor(r7, r8)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            r0 = r3
            android.media.MediaMetadataRetriever r3 = com.samsung.android.media.convert.util.CodecsHelper.createMediaMetadataRetriever(r7, r8)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            r1 = r3
            int r3 = com.samsung.android.media.convert.util.CodecsHelper.getAndSelectVideoTrackIndex(r0)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            r4 = -1
            if (r3 == r4) goto L1a
            boolean r4 = com.samsung.android.media.convert.util.CodecsHelper.isSupportedFormat(r1)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            if (r4 != 0) goto L22
        L1a:
            java.lang.String r4 = "SemVideoConverter"
            java.lang.String r5 = "Video Format is not supported"
            android.util.Log.d(r4, r5)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            r2 = 0
        L22:
            boolean r4 = r6.getHDRMode(r1)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L34
            if (r4 != 0) goto L29
            r2 = 0
        L29:
            if (r0 == 0) goto L2e
            r0.release()
        L2e:
            r0 = 0
            if (r1 == 0) goto L44
            goto L41
        L32:
            r3 = move-exception
            goto L47
        L34:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L32
            r2 = 0
            if (r0 == 0) goto L3e
            r0.release()
        L3e:
            r0 = 0
            if (r1 == 0) goto L44
        L41:
            r1.release()
        L44:
            r1 = 0
            return r2
        L47:
            if (r0 == 0) goto L4c
            r0.release()
        L4c:
            r0 = 0
            if (r1 == 0) goto L52
            r1.release()
        L52:
            r1 = 0
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.media.convert.core.ConvertVideo.CheckVideoFormat(android.content.Context, android.net.Uri):boolean");
    }

    private int getVideoSampleSize(MediaFormat format) {
        if (format.getString(MediaFormat.KEY_MIME).startsWith(BnRConstants.VIDEO_DIR_PATH)) {
            int width = format.getInteger("width");
            int height = format.getInteger("height");
            return width * height;
        }
        return 0;
    }

    private static final long unsignedIntToLong(byte[] b) {
        long l = 0 | (b[0] & 255);
        return (((((l << 8) | (b[1] & 255)) << 8) | (b[2] & 255)) << 8) | (b[3] & 255);
    }

    public static boolean isSupportedFormat(String filePath) {
        return CodecsHelper.isSupportedFormat(filePath);
    }

    public static boolean isSupportedFormat(String filePath, Context context, Uri uri) {
        if (mUseUri) {
            return CodecsHelper.isSupportedFormat(context, uri);
        }
        return CodecsHelper.isSupportedFormat(filePath);
    }

    public static boolean isSupportedFormat(Context context, Uri uri) {
        return CodecsHelper.isSupportedFormat(context, uri);
    }

    public int getVideoFramerate(String filePath, Context context, Uri uri) {
        long avgTime;
        int frameRate;
        int videoFPS;
        MediaExtractor videoExtractor = null;
        try {
            if (mUseUri) {
                videoExtractor = CodecsHelper.createExtractor(context, uri);
            } else {
                MediaExtractor videoExtractor2 = CodecsHelper.createExtractor(filePath);
                videoExtractor = videoExtractor2;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        long avgTime2 = 0;
        long previousTime = 0;
        int frameCount = 0;
        videoExtractor.getTrackCount();
        int trackVideo = CodecsHelper.getAndSelectVideoTrackIndex(videoExtractor);
        if (trackVideo == -1) {
            Log.d(Constants.TAG, "Valid video track absent");
            videoFPS = 30;
        } else {
            MediaFormat videoFormat = videoExtractor.getTrackFormat(trackVideo);
            int bufferSizeV = getVideoSampleSize(videoFormat);
            ByteBuffer dstBufV = ByteBuffer.allocate(bufferSizeV);
            MediaCodec.BufferInfo bufferInfoV = new MediaCodec.BufferInfo();
            int i = 0;
            while (true) {
                MediaFormat videoFormat2 = videoFormat;
                if (i > 5) {
                    break;
                }
                bufferInfoV.size = videoExtractor.readSampleData(dstBufV, 0);
                long presentationTimeUs = videoExtractor.getSampleTime();
                videoExtractor.advance();
                if (i == 0) {
                    previousTime = presentationTimeUs;
                } else {
                    avgTime2 += presentationTimeUs - previousTime;
                    previousTime = presentationTimeUs;
                    frameCount++;
                }
                i++;
                videoFormat = videoFormat2;
            }
            if (((int) (1000 / ((avgTime2 / 1000) / frameCount))) > 0) {
                long j = avgTime2 / 1000;
                avgTime = avgTime2;
                long avgTime3 = frameCount;
                frameRate = (int) (1000 / (j / avgTime3));
            } else {
                avgTime = avgTime2;
                frameRate = 30;
            }
            videoFPS = frameRate;
        }
        if (videoExtractor != null) {
            videoExtractor.release();
        }
        return videoFPS;
    }

    public boolean updateCreationTime(String filepath, boolean mode) {
        Throwable th;
        String atomName;
        byte[] atomNameBuf;
        String[] parentContainer;
        ConvertVideo convertVideo = this;
        boolean ret = false;
        Log.d(Constants.TAG, "updateCreationTime mode : " + mode + ", filepath : " + filepath);
        if (convertVideo.mAuthor == -1 || (!convertVideo.mUpdateCreationTime && mode)) {
            Log.d(Constants.TAG, "Do not update CreationTime");
            return false;
        }
        File file = new File(filepath);
        byte[] atomSizeBuf = new byte[4];
        byte[] atomNameBuf2 = new byte[4];
        byte[] temp = new byte[4];
        long fileSize = file.length();
        if (fileSize <= 0) {
            Log.d(Constants.TAG, "file size is same or less than 0");
            return false;
        }
        String[] parentContainer2 = {"mdia", "minf", "moov", "stbl", "trak"};
        RandomAccessFile fileObj = null;
        try {
            try {
                if (mode) {
                    try {
                        fileObj = new RandomAccessFile(file, "rw");
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        fileObj.close();
                        return ret;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            fileObj.close();
                            throw th;
                        } catch (IOException e1) {
                            e1.printStackTrace();
                            throw th;
                        }
                    }
                } else {
                    try {
                        fileObj = new RandomAccessFile(file, "r");
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        fileObj.close();
                        return ret;
                    } catch (Throwable th3) {
                        th = th3;
                        fileObj.close();
                        throw th;
                    }
                }
                long filePointer = 0;
                while (true) {
                    if (filePointer >= fileSize) {
                        break;
                    }
                    try {
                        Log.d(Constants.TAG, "filePointer: " + filePointer);
                        fileObj.seek(filePointer);
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                    fileObj.read(atomSizeBuf, 0, atomSizeBuf.length);
                    long atomSize = unsignedIntToLong(atomSizeBuf);
                    File file2 = file;
                    byte[] atomSizeBuf2 = atomSizeBuf;
                    try {
                        Log.d(Constants.TAG, "Atom Size: " + atomSize);
                        try {
                            fileObj.read(atomNameBuf2, 0, atomNameBuf2.length);
                            atomName = new String(atomNameBuf2);
                            atomNameBuf = atomNameBuf2;
                        } catch (Exception e3) {
                            e = e3;
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } catch (Exception e4) {
                        e = e4;
                    } catch (Throwable th5) {
                        th = th5;
                    }
                    try {
                        Log.d(Constants.TAG, "Atom Box: " + atomName);
                        int tmpAtomPosition = Arrays.binarySearch(parentContainer2, atomName);
                        if (tmpAtomPosition >= 0) {
                            parentContainer = parentContainer2;
                            try {
                                Log.d(Constants.TAG, "Found parent: " + atomName + " move to position: " + tmpAtomPosition);
                                filePointer += 8;
                            } catch (Exception e5) {
                                e = e5;
                                e.printStackTrace();
                                fileObj.close();
                                return ret;
                            }
                        } else {
                            parentContainer = parentContainer2;
                            if (atomName.equals("mvhd")) {
                                Log.d(Constants.TAG, "Found: mvhd");
                                ret = true;
                                if (mode) {
                                    fileObj.read(temp, 0, temp.length);
                                    byte[] bArr = creationTime;
                                    fileObj.write(bArr, 0, bArr.length);
                                } else {
                                    byte[] bArr2 = creationTime;
                                    fileObj.read(bArr2, 0, bArr2.length);
                                    byte[] bArr3 = creationTime;
                                    fileObj.read(bArr3, 0, bArr3.length);
                                    convertVideo.mUpdateCreationTime = true;
                                }
                            } else if (atomSize == 1) {
                                fileObj.seek(filePointer + 8);
                                byte[] atomLargeSizeBuf = new byte[8];
                                fileObj.read(atomLargeSizeBuf, 0, atomLargeSizeBuf.length);
                                BigInteger atomTmpLargeSize = new BigInteger(atomLargeSizeBuf);
                                long atomLargeSize = atomTmpLargeSize.longValue();
                                filePointer += atomLargeSize;
                                Log.d(Constants.TAG, "64bit: " + atomLargeSize);
                            } else {
                                if (atomSize == 0) {
                                    Log.d(Constants.TAG, "filePointer does not go forward. Exit.");
                                    ret = false;
                                    break;
                                }
                                filePointer += atomSize;
                                Log.d(Constants.TAG, "move: " + filePointer + " atomsize " + atomSize);
                            }
                        }
                        convertVideo = this;
                        atomSizeBuf = atomSizeBuf2;
                        file = file2;
                        atomNameBuf2 = atomNameBuf;
                        parentContainer2 = parentContainer;
                    } catch (Exception e6) {
                        e = e6;
                    } catch (Throwable th6) {
                        th = th6;
                        fileObj.close();
                        throw th;
                    }
                }
                fileObj.close();
            } catch (IOException e13) {
                e13.printStackTrace();
            }
            return ret;
        } catch (Throwable th7) {
            th = th7;
        }
    }

    public boolean getHDRMode(MediaMetadataRetriever retriever) {
        try {
            String bitdepth = retriever.extractMetadata(1028);
            String auth = retriever.extractMetadata(1015);
            String mode = retriever.extractMetadata(1022);
            if (auth != null) {
                this.mAuthor = Integer.parseInt(auth);
                if (mode != null) {
                    this.mRecordingMode = Integer.parseInt(mode);
                }
            }
            Log.d(Constants.TAG, "getHDRMode  mAuthor : " + this.mAuthor + ", mRecordingMode : " + this.mRecordingMode);
            if ("10".equals(bitdepth)) {
                this.mInputBitdepth = 10;
                int i = this.mAuthor;
                if ((i == 0 || i == 8) && this.mRecordingMode == 10) {
                    this.mHDRType = 2;
                } else {
                    this.mHDRType = 1;
                }
            } else {
                this.mHDRType = 0;
            }
            Log.d(Constants.TAG, "getHDRMode  mHDRType : " + this.mHDRType);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.mHDRType == 2;
    }

    private static byte[] getByteArrayFromByteBuffer(ByteBuffer byteBuffer) {
        byte[] bytesArray = new byte[byteBuffer.remaining()];
        byteBuffer.get(bytesArray, 0, bytesArray.length);
        return bytesArray;
    }

    private static String byteArrayToHex(byte[] a) {
        StringBuilder sb = new StringBuilder();
        for (byte b : a) {
            sb.append(String.format("%02x ", Integer.valueOf(b & 255)));
        }
        return sb.toString();
    }

    private String getVEEditFilePath(Context context, Uri mediaUri) {
        String lEditPath = null;
        if (mediaUri == null || mediaUri.toString().length() <= 0) {
            return null;
        }
        String lFileName = mediaUri.toString();
        Log.d(Constants.TAG, "lFileName :" + lFileName);
        if (lFileName.startsWith(SecContentProviderURI.CONTENT)) {
            if (lFileName.startsWith(MediaStore.Video.Media.EXTERNAL_CONTENT_URI.toString()) || lFileName.startsWith(MediaStore.Video.Media.INTERNAL_CONTENT_URI.toString())) {
                Cursor lCursor = getVideoFileInfoByUri(mediaUri, context);
                if (lCursor != null && lCursor.getCount() > 0) {
                    lCursor.moveToFirst();
                    lEditPath = lCursor.getString(lCursor.getColumnIndex("_data"));
                }
                if (lCursor != null) {
                    lCursor.close();
                    return lEditPath;
                }
                return lEditPath;
            }
            return mediaUri.getPath();
        }
        if (lFileName.startsWith("file://")) {
            return mediaUri.getPath();
        }
        return lFileName;
    }

    private static Cursor getVideoFileInfoByUri(Uri uri, Context context) {
        String[] cols = {"_data", "duration"};
        try {
            Cursor c = context.getContentResolver().query(uri, cols, null, null);
            return c;
        } catch (SQLiteException e) {
            return null;
        } catch (Exception e2) {
            return null;
        }
    }
}
