.class public final Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

.field public final synthetic val$emptyPos:I

.field public final synthetic val$fromtileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->val$emptyPos:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->val$fromtileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

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
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileLayout;

    .line 9
    .line 10
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->val$emptyPos:I

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;->val$fromtileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 13
    .line 14
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    .line 15
    .line 16
    sget v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->$r8$clinit:I

    .line 17
    .line 18
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setCircleTranslation(IZ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
