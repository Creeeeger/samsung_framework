.class public final Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2$1;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2$1;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->blurView:Landroid/widget/ImageView;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    move-object v1, v2

    .line 12
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    aget v3, v0, v1

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2$1;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 19
    .line 20
    iget-object v4, v4, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->blurView:Landroid/widget/ImageView;

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    move-object v4, v2

    .line 25
    :cond_1
    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    int-to-double v4, v4

    .line 30
    const-wide v6, 0x3f9999999999999aL    # 0.025

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    mul-double/2addr v4, v6

    .line 36
    double-to-int v4, v4

    .line 37
    sub-int/2addr v3, v4

    .line 38
    aput v3, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    aget v3, v0, v1

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2$1;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->blurView:Landroid/widget/ImageView;

    .line 46
    .line 47
    if-nez p0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v2, p0

    .line 51
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    int-to-double v4, p0

    .line 56
    mul-double/2addr v4, v6

    .line 57
    double-to-int p0, v4

    .line 58
    sub-int/2addr v3, p0

    .line 59
    aput v3, v0, v1

    .line 60
    .line 61
    return-object v0
.end method
