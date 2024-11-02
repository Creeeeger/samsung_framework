package androidx.picker.helper;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.picker.loader.AppIconFlow;
import com.facebook.shimmer.ShimmerFrameLayout;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "androidx.picker.helper.ImageViewHelperKt$loadIcon$job$1", f = "ImageViewHelper.kt", l = {42}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ImageViewHelperKt$loadIcon$job$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ CoroutineDispatcher $dispatcher;
    final /* synthetic */ AppIconFlow $iconFlow;
    final /* synthetic */ ShimmerFrameLayout $shimmerLayout;
    final /* synthetic */ ImageView $this_loadIcon;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageViewHelperKt$loadIcon$job$1(AppIconFlow appIconFlow, CoroutineDispatcher coroutineDispatcher, ImageView imageView, ShimmerFrameLayout shimmerFrameLayout, Continuation<? super ImageViewHelperKt$loadIcon$job$1> continuation) {
        super(2, continuation);
        this.$iconFlow = appIconFlow;
        this.$dispatcher = coroutineDispatcher;
        this.$this_loadIcon = imageView;
        this.$shimmerLayout = shimmerFrameLayout;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImageViewHelperKt$loadIcon$job$1(this.$iconFlow, this.$dispatcher, this.$this_loadIcon, this.$shimmerLayout, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImageViewHelperKt$loadIcon$job$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            Flow flowOn = FlowKt.flowOn(this.$iconFlow, this.$dispatcher);
            final ImageView imageView = this.$this_loadIcon;
            final ShimmerFrameLayout shimmerFrameLayout = this.$shimmerLayout;
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.picker.helper.ImageViewHelperKt$loadIcon$job$1.1

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "androidx.picker.helper.ImageViewHelperKt$loadIcon$job$1$1$1", f = "ImageViewHelper.kt", l = {}, m = "invokeSuspend")
                /* renamed from: androidx.picker.helper.ImageViewHelperKt$loadIcon$job$1$1$1, reason: invalid class name and collision with other inner class name */
                /* loaded from: classes.dex */
                final class C00001 extends SuspendLambda implements Function2 {
                    final /* synthetic */ Drawable $drawable;
                    final /* synthetic */ ShimmerFrameLayout $shimmerLayout;
                    final /* synthetic */ ImageView $this_loadIcon;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C00001(ImageView imageView, Drawable drawable, ShimmerFrameLayout shimmerFrameLayout, Continuation<? super C00001> continuation) {
                        super(2, continuation);
                        this.$this_loadIcon = imageView;
                        this.$drawable = drawable;
                        this.$shimmerLayout = shimmerFrameLayout;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation create(Object obj, Continuation continuation) {
                        return new C00001(this.$this_loadIcon, this.$drawable, this.$shimmerLayout, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ((C00001) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        if (this.label == 0) {
                            ResultKt.throwOnFailure(obj);
                            this.$this_loadIcon.setImageDrawable(this.$drawable);
                            this.$shimmerLayout.setVisibility(8);
                            this.$shimmerLayout.stopShimmer();
                            return Unit.INSTANCE;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    DefaultScheduler defaultScheduler = Dispatchers.Default;
                    Object withContext = BuildersKt.withContext(MainDispatcherLoader.dispatcher, new C00001(imageView, (Drawable) obj2, shimmerFrameLayout, null), continuation);
                    if (withContext != CoroutineSingletons.COROUTINE_SUSPENDED) {
                        return Unit.INSTANCE;
                    }
                    return withContext;
                }
            };
            this.label = 1;
            if (flowOn.collect(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
