.class public final Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

.field public final synthetic val$idx:I

.field public final synthetic val$removeView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

.field public final synthetic val$tileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Lcom/android/systemui/qs/customize/SecCustomizeTileView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$idx:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$tileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$removeView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$idx:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$removeView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$idx:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$removeView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    const-string p1, "CustomizerTileLayout"

    .line 2
    .line 3
    const-string v0, "moveTile onAnimationStart"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    .line 9
    .line 10
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$idx:I

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->val$tileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 13
    .line 14
    iget-boolean v1, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    .line 15
    .line 16
    sget v2, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->$r8$clinit:I

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setCircleTranslation(IZ)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
