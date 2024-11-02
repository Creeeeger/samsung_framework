.class public final Lcom/android/wm/shell/common/split/DividerPanel$2;
.super Landroid/view/ViewOutlineProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerPanel;

.field public final synthetic val$height:I

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerPanel;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel$2;->this$0:Lcom/android/wm/shell/common/split/DividerPanel;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerPanel$2;->val$width:I

    .line 4
    .line 5
    iput p3, p0, Lcom/android/wm/shell/common/split/DividerPanel$2;->val$height:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    iget v3, p0, Lcom/android/wm/shell/common/split/DividerPanel$2;->val$width:I

    .line 4
    .line 5
    iget v4, p0, Lcom/android/wm/shell/common/split/DividerPanel$2;->val$height:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel$2;->this$0:Lcom/android/wm/shell/common/split/DividerPanel;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const p1, 0x7f070953

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    int-to-float v5, p0

    .line 23
    move-object v0, p2

    .line 24
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 25
    .line 26
    .line 27
    const/high16 p0, 0x3f800000    # 1.0f

    .line 28
    .line 29
    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
