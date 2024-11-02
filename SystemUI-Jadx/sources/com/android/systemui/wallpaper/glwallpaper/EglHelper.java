package com.android.systemui.wallpaper.glwallpaper;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLUtils;
import android.text.TextUtils;
import android.util.Log;
import android.view.SurfaceHolder;
import com.android.systemui.coverlauncher.utils.badge.NotificationListener$$ExternalSyntheticOutline0;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class EglHelper {
    public EGLConfig mEglConfig;
    public EGLContext mEglContext;
    public EGLDisplay mEglDisplay;
    public boolean mEglReady;
    public EGLSurface mEglSurface;
    public final int[] mEglVersion = new int[2];
    public final Set mExts = new HashSet();

    public EglHelper() {
        connectDisplay();
    }

    public static int[] getConfig() {
        return new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 0, 12325, 0, 12326, 0, 12352, 4, 12327, 12344, 12344};
    }

    public final boolean connectDisplay() {
        Set set = this.mExts;
        set.clear();
        this.mEglDisplay = EGL14.eglGetDisplay(0);
        if (!hasEglDisplay()) {
            Log.w("EglHelper", "eglGetDisplay failed: " + GLUtils.getEGLErrorString(EGL14.eglGetError()));
            return false;
        }
        String eglQueryString = EGL14.eglQueryString(this.mEglDisplay, 12373);
        if (!TextUtils.isEmpty(eglQueryString)) {
            Collections.addAll(set, eglQueryString.split(" "));
            return true;
        }
        return true;
    }

    public final boolean createEglContext() {
        Log.d("EglHelper", "createEglContext start");
        int[] iArr = new int[5];
        iArr[0] = 12440;
        char c = 2;
        iArr[1] = 2;
        if (((HashSet) this.mExts).contains("EGL_IMG_context_priority")) {
            iArr[2] = 12544;
            iArr[3] = 12547;
            c = 4;
        }
        iArr[c] = 12344;
        if (hasEglDisplay()) {
            this.mEglContext = EGL14.eglCreateContext(this.mEglDisplay, this.mEglConfig, EGL14.EGL_NO_CONTEXT, iArr, 0);
            if (!hasEglContext()) {
                Log.w("EglHelper", "eglCreateContext failed: " + GLUtils.getEGLErrorString(EGL14.eglGetError()));
                return false;
            }
            Log.d("EglHelper", "createEglContext done : " + this.mEglContext);
            return true;
        }
        Log.w("EglHelper", "mEglDisplay is null");
        return false;
    }

    public final boolean createEglSurface(SurfaceHolder surfaceHolder, boolean z) {
        int i;
        int[] iArr;
        Log.d("EglHelper", "createEglSurface start");
        if (hasEglDisplay() && surfaceHolder.getSurface().isValid()) {
            Set set = this.mExts;
            if (((HashSet) set).contains("EGL_EXT_gl_colorspace_display_p3_passthrough")) {
                i = 13456;
            } else {
                i = 0;
            }
            if (z && ((HashSet) set).contains("EGL_KHR_gl_colorspace") && i > 0) {
                iArr = new int[]{12445, i, 12344};
            } else {
                iArr = null;
            }
            this.mEglSurface = EGL14.eglCreateWindowSurface(this.mEglDisplay, this.mEglConfig, surfaceHolder, iArr, 0);
            if (!hasEglSurface()) {
                Log.w("EglHelper", "createWindowSurface failed: " + GLUtils.getEGLErrorString(EGL14.eglGetError()));
                return false;
            }
            EGLDisplay eGLDisplay = this.mEglDisplay;
            EGLSurface eGLSurface = this.mEglSurface;
            if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.mEglContext)) {
                Log.w("EglHelper", "eglMakeCurrent failed: " + GLUtils.getEGLErrorString(EGL14.eglGetError()));
                return false;
            }
            Log.d("EglHelper", "createEglSurface done : " + this.mEglSurface);
            return true;
        }
        Log.w("EglHelper", "Create EglSurface failed: hasEglDisplay=" + hasEglDisplay() + ", has valid surface=" + surfaceHolder.getSurface().isValid());
        return false;
    }

    public final void destroyEglContext() {
        Log.d("EglHelper", "destroyEglContext : " + this.mEglContext);
        if (hasEglContext()) {
            EGL14.eglDestroyContext(this.mEglDisplay, this.mEglContext);
            this.mEglContext = EGL14.EGL_NO_CONTEXT;
        }
    }

    public final void destroyEglSurface() {
        Log.d("EglHelper", "destroyEglSurface : " + this.mEglSurface);
        if (hasEglSurface()) {
            EGLDisplay eGLDisplay = this.mEglDisplay;
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            EGL14.eglDestroySurface(this.mEglDisplay, this.mEglSurface);
            this.mEglSurface = EGL14.EGL_NO_SURFACE;
        }
    }

    public final void finish() {
        NotificationListener$$ExternalSyntheticOutline0.m(new StringBuilder(" finish : "), this.mEglReady, "EglHelper");
        if (this.mEglReady) {
            if (hasEglSurface()) {
                destroyEglSurface();
            }
            if (hasEglContext()) {
                destroyEglContext();
            }
            if (hasEglDisplay()) {
                EGL14.eglTerminate(this.mEglDisplay);
                this.mEglDisplay = EGL14.EGL_NO_DISPLAY;
            }
            this.mEglReady = false;
        }
    }

    public final boolean hasEglContext() {
        EGLContext eGLContext = this.mEglContext;
        if (eGLContext != null && eGLContext != EGL14.EGL_NO_CONTEXT) {
            return true;
        }
        return false;
    }

    public final boolean hasEglDisplay() {
        EGLDisplay eGLDisplay = this.mEglDisplay;
        if (eGLDisplay != null && eGLDisplay != EGL14.EGL_NO_DISPLAY) {
            return true;
        }
        return false;
    }

    public final boolean hasEglSurface() {
        EGLSurface eGLSurface = this.mEglSurface;
        if (eGLSurface != null && eGLSurface != EGL14.EGL_NO_SURFACE) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void init(android.view.SurfaceHolder r14, boolean r15) {
        /*
            r13 = this;
            boolean r0 = r13.hasEglDisplay()
            java.lang.String r1 = "EglHelper"
            if (r0 != 0) goto L14
            boolean r0 = r13.connectDisplay()
            if (r0 != 0) goto L14
            java.lang.String r13 = "Can not connect display, abort!"
            android.util.Log.w(r1, r13)
            return
        L14:
            android.opengl.EGLDisplay r0 = r13.mEglDisplay
            int[] r2 = r13.mEglVersion
            r3 = 0
            r4 = 1
            boolean r0 = android.opengl.EGL14.eglInitialize(r0, r2, r3, r2, r4)
            if (r0 != 0) goto L3a
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            java.lang.String r14 = "eglInitialize failed: "
            r13.<init>(r14)
            int r14 = android.opengl.EGL14.eglGetError()
            java.lang.String r14 = android.opengl.GLUtils.getEGLErrorString(r14)
            r13.append(r14)
            java.lang.String r13 = r13.toString()
            android.util.Log.w(r1, r13)
            return
        L3a:
            int[] r0 = new int[r4]
            android.opengl.EGLConfig[] r2 = new android.opengl.EGLConfig[r4]
            int[] r6 = getConfig()
            android.opengl.EGLDisplay r5 = r13.mEglDisplay
            r7 = 0
            r9 = 0
            r10 = 1
            r12 = 0
            r8 = r2
            r11 = r0
            boolean r5 = android.opengl.EGL14.eglChooseConfig(r5, r6, r7, r8, r9, r10, r11, r12)
            if (r5 != 0) goto L6a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "eglChooseConfig failed: "
            r0.<init>(r2)
            int r2 = android.opengl.EGL14.eglGetError()
            java.lang.String r2 = android.opengl.GLUtils.getEGLErrorString(r2)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            android.util.Log.w(r1, r0)
            goto L81
        L6a:
            r5 = r0[r3]
            if (r5 > 0) goto L83
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r5 = "eglChooseConfig failed, invalid configs count: "
            r2.<init>(r5)
            r0 = r0[r3]
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            android.util.Log.w(r1, r0)
        L81:
            r0 = 0
            goto L85
        L83:
            r0 = r2[r3]
        L85:
            r13.mEglConfig = r0
            if (r0 != 0) goto L8f
            java.lang.String r13 = "eglConfig not initialized!"
            android.util.Log.w(r1, r13)
            return
        L8f:
            boolean r0 = r13.createEglContext()
            if (r0 != 0) goto L9b
            java.lang.String r13 = "Can't create EGLContext!"
            android.util.Log.w(r1, r13)
            return
        L9b:
            boolean r14 = r13.createEglSurface(r14, r15)
            if (r14 != 0) goto La7
            java.lang.String r13 = "Can't create EGLSurface!"
            android.util.Log.w(r1, r13)
            return
        La7:
            r13.mEglReady = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.glwallpaper.EglHelper.init(android.view.SurfaceHolder, boolean):void");
    }

    public final boolean swapBuffer() {
        boolean eglSwapBuffers = EGL14.eglSwapBuffers(this.mEglDisplay, this.mEglSurface);
        int eglGetError = EGL14.eglGetError();
        if (eglGetError != 12288) {
            Log.w("EglHelper", "eglSwapBuffers failed: " + GLUtils.getEGLErrorString(eglGetError));
        }
        return eglSwapBuffers;
    }
}
