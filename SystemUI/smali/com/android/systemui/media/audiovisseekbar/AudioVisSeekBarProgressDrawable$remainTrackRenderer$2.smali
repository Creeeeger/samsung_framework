.class final Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$remainTrackRenderer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;-><init>(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$remainTrackRenderer$2;->this$0:Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$remainTrackRenderer$2;->this$0:Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->view:Landroid/widget/SeekBar;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->config:Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;-><init>(Landroid/view/View;Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
