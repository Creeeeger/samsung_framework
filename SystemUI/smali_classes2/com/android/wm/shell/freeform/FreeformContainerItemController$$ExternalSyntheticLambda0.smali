.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerItemController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    iput-boolean p0, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconLoadCompleted:Z

    .line 5
    .line 6
    iput-boolean p0, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPublishCompleted:Z

    .line 7
    .line 8
    return-void
.end method
