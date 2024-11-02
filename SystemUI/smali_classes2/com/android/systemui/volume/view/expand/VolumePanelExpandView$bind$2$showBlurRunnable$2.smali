.class public final Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move-object v0, v1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->blurView:Landroid/widget/ImageView;

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-object v1, v2

    .line 15
    :goto_0
    new-instance v2, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2$1;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2$1;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/util/BlurEffect;->setCapturedBlur(Landroid/widget/ImageView;Ljava/util/function/Supplier;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
