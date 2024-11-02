.class public final synthetic Lcom/android/wm/shell/common/TvWindowMenuActionButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

.field public final synthetic f$1:Landroid/graphics/drawable/Icon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/TvWindowMenuActionButton;Landroid/graphics/drawable/Icon;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Icon;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Icon;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->mIconImageView:Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->mCurrentIcon:Landroid/graphics/drawable/Icon;

    .line 14
    .line 15
    if-ne v1, p0, :cond_0

    .line 16
    .line 17
    iget-object p0, v0, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->mIconImageView:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
