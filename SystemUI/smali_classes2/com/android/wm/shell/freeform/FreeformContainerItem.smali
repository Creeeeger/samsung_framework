.class public abstract Lcom/android/wm/shell/freeform/FreeformContainerItem;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAnimationCompleted:Z

.field public final mContext:Landroid/content/Context;

.field public mDescription:Ljava/lang/String;

.field public mIconLoadCompleted:Z

.field public mIconView:Landroid/widget/ImageView;

.field public final mPackageName:Ljava/lang/String;

.field public mPublishCompleted:Z

.field public mShowingIcon:Landroid/graphics/drawable/Drawable;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    iput-boolean p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mAnimationCompleted:Z

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconLoadCompleted:Z

    .line 8
    .line 9
    iput-boolean p3, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPublishCompleted:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    .line 14
    .line 15
    const-string p3, "com.samsung.android.messaging"

    .line 16
    .line 17
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 32
    .line 33
    .line 34
    :cond_0
    iput p4, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mUserId:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public abstract getTaskId()I
.end method

.method public handleMaxItem()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract launch()V
.end method

.method public abstract loadShowingIcon(Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;)V
.end method

.method public needLoading(Lcom/android/wm/shell/freeform/FreeformContainerItemController;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public abstract removeDuplicatedItemsIfExist(Lcom/android/wm/shell/freeform/FreeformContainerItemController;)V
.end method

.method public throwAway(Lcom/android/wm/shell/freeform/FreeformContainerItemController;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
