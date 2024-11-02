package androidx.picker.helper;

import android.widget.ImageView;
import androidx.picker.loader.AppIconFlow;
import com.facebook.shimmer.ShimmerFrameLayout;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.StandaloneCoroutine;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class ImageViewHelperKt {
    /* JADX WARN: Type inference failed for: r9v2, types: [androidx.picker.helper.ImageViewHelperKt$$ExternalSyntheticLambda0] */
    public static final ImageViewHelperKt$$ExternalSyntheticLambda0 loadIcon(ImageView imageView, CoroutineDispatcher coroutineDispatcher, AppIconFlow appIconFlow, final ShimmerFrameLayout shimmerFrameLayout) {
        shimmerFrameLayout.setVisibility(0);
        shimmerFrameLayout.startShimmer();
        final StandaloneCoroutine launch$default = BuildersKt.launch$default(CoroutineScopeKt.CoroutineScope(coroutineDispatcher), null, null, new ImageViewHelperKt$loadIcon$job$1(appIconFlow, coroutineDispatcher, imageView, shimmerFrameLayout, null), 3);
        return new DisposableHandle() { // from class: androidx.picker.helper.ImageViewHelperKt$$ExternalSyntheticLambda0
            @Override // kotlinx.coroutines.DisposableHandle
            public final void dispose() {
                ImageViewHelperKt.m37loadIcon$lambda0(shimmerFrameLayout, launch$default);
            }
        };
    }

    /* renamed from: loadIcon$lambda-0, reason: not valid java name */
    public static final void m37loadIcon$lambda0(ShimmerFrameLayout shimmerFrameLayout, Job job) {
        shimmerFrameLayout.setVisibility(8);
        shimmerFrameLayout.stopShimmer();
        job.cancel(null);
    }
}
