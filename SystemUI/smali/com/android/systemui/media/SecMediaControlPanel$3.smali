.class public final Lcom/android/systemui/media/SecMediaControlPanel$3;
.super Landroid/view/ViewOutlineProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecMediaControlPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$3;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$3;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    .line 4
    .line 5
    iget v4, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtSize:I

    .line 6
    .line 7
    iget p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mAlbumArtRadius:I

    .line 8
    .line 9
    int-to-float v5, p0

    .line 10
    move-object v0, p2

    .line 11
    move v3, v4

    .line 12
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
