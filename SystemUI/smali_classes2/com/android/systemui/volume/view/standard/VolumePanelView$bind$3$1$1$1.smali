.class public final Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $blurView:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/android/systemui/volume/view/standard/VolumePanelView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1$1;->$blurView:Landroid/widget/ImageView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1$1;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lcom/android/systemui/volume/util/ViewLocationUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewLocationUtil;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1$1;->$blurView:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1$1;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 15
    .line 16
    iget-boolean v2, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    aget v1, v0, v4

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1$1;->$blurView:Landroid/widget/ImageView;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-double v5, v2

    .line 31
    const-wide v7, 0x3fa999999999999aL    # 0.05

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    mul-double/2addr v5, v7

    .line 37
    double-to-int v2, v5

    .line 38
    sub-int/2addr v1, v2

    .line 39
    aput v1, v0, v4

    .line 40
    .line 41
    aget v1, v0, v3

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$bind$3$1$1$1;->$blurView:Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    int-to-double v4, p0

    .line 50
    mul-double/2addr v4, v7

    .line 51
    double-to-int p0, v4

    .line 52
    sub-int/2addr v1, p0

    .line 53
    aput v1, v0, v3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    aget p0, v0, v4

    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    .line 59
    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    :cond_1
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    .line 79
    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    const/4 v3, -0x1

    .line 83
    :cond_2
    mul-int/2addr v1, v3

    .line 84
    sub-int/2addr p0, v1

    .line 85
    aput p0, v0, v4

    .line 86
    .line 87
    :goto_0
    return-object v0
.end method
