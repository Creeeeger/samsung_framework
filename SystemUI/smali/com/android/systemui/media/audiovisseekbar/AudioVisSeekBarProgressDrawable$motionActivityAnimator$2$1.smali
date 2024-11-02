.class final Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$motionActivityAnimator$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$motionActivityAnimator$2$1;->this$0:Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$motionActivityAnimator$2$1;->this$0:Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->trackRenderer:Lcom/android/systemui/media/audiovisseekbar/renderer/track/auto/MultiWaveAreaTrackRenderer;

    .line 10
    .line 11
    iput p1, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->motionActivity:F

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/renderer/BaseRenderer;->view:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method
