.class final Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;-><init>(Landroid/content/Context;Lcom/android/systemui/media/SecPlayerViewHolder;Lkotlin/jvm/functions/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

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
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    instance-of v1, v1, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->config:Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    .line 42
    .line 43
    iput p1, v0, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 48
    .line 49
    iput p1, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->progressBarSecondaryColor:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition$accentSecondary$2;->this$0:Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/SecColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->dummyProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 68
    .line 69
    if-eqz p0, :cond_1

    .line 70
    .line 71
    const/4 v0, 0x2

    .line 72
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-eqz p0, :cond_1

    .line 77
    .line 78
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 79
    .line 80
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p0
.end method
