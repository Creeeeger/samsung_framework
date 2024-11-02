.class public final Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final boxContainer:Landroid/view/ViewGroup;

.field public final effectView:Landroid/view/ViewGroup;

.field public final endDrawable:Landroid/widget/ImageView;

.field public final middleDrawable:Landroid/widget/ImageView;

.field public final noiseCancelingBar:Landroid/view/ViewGroup;

.field public final root:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

.field public final startDrawable:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0a9f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 14
    .line 15
    const v1, 0x7f0a0a97

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/ViewGroup;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->noiseCancelingBar:Landroid/view/ViewGroup;

    .line 25
    .line 26
    const v1, 0x7f0a0a9b

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/view/ViewGroup;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->boxContainer:Landroid/view/ViewGroup;

    .line 36
    .line 37
    const v1, 0x7f0a0a9e

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/widget/ImageView;

    .line 45
    .line 46
    iput-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->startDrawable:Landroid/widget/ImageView;

    .line 47
    .line 48
    const v1, 0x7f0a0a9d

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/widget/ImageView;

    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->middleDrawable:Landroid/widget/ImageView;

    .line 58
    .line 59
    const v1, 0x7f0a0a9c

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/widget/ImageView;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->endDrawable:Landroid/widget/ImageView;

    .line 69
    .line 70
    const p1, 0x7f0a0aa0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/view/ViewGroup;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->effectView:Landroid/view/ViewGroup;

    .line 80
    .line 81
    return-void
.end method
