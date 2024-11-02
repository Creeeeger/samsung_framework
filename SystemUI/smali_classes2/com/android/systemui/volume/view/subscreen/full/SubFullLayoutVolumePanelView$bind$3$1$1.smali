.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $blurView:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1;->$blurView:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1;->$blurView:Landroid/widget/ImageView;

    .line 9
    .line 10
    new-instance v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1$1;

    .line 11
    .line 12
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1$1;-><init>(Landroid/widget/ImageView;Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/volume/util/BlurEffect;->setCapturedBlur(Landroid/widget/ImageView;Ljava/util/function/Supplier;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
