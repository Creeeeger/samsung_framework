.class public final synthetic Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mButtons:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/widget/ImageButton;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mLastVisibleTarget:Landroid/widget/ImageButton;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    const/16 v2, 0x8

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mTouchableRegionCalculator:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->configureTouchableRegion(Lcom/android/wm/shell/compatui/BoundsCompatUILayout$$ExternalSyntheticLambda0;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
