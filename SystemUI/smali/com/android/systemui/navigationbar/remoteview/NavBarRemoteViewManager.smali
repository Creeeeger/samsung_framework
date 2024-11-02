.class public final Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public adaptivePosition:I

.field public final comparator:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$comparator$1;

.field public final context:Landroid/content/Context;

.field public darkIntensity:F

.field public leftContainer:Landroid/widget/LinearLayout;

.field public final leftViewList:Ljava/util/PriorityQueue;

.field public navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public rightContainer:Landroid/widget/LinearLayout;

.field public final rightViewList:Ljava/util/PriorityQueue;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public showInGestureMode:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    sget-object p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$comparator$1;->INSTANCE:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$comparator$1;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->comparator:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$comparator$1;

    .line 11
    .line 12
    new-instance p2, Ljava/util/PriorityQueue;

    .line 13
    .line 14
    invoke-direct {p2, p1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    .line 18
    .line 19
    new-instance v0, Ljava/util/PriorityQueue;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->clear()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static isMultiModalButton(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const-string v1, "honeyboard"

    .line 7
    .line 8
    invoke-static {p0, v1, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :cond_0
    return v0
.end method


# virtual methods
.method public final applyTint(Landroid/view/View;)V
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const v0, 0x7f060437

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const v3, 0x7f060436

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sget-object v3, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->sInstance:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    .line 23
    .line 24
    iget v4, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->darkIntensity:F

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v3, v4, v0, v2}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    move-object v2, p1

    .line 45
    check-cast v2, Landroid/widget/ImageView;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 48
    .line 49
    .line 50
    move v0, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    instance-of v2, v2, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->darkIntensity:F

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->setDarkIntensity(F)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move v1, v0

    .line 76
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public final getNavBarStore()Lcom/android/systemui/navigationbar/store/NavBarStore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final getRemoteView(II)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON_LARGE_COVER:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    if-ne p2, v2, :cond_4

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    if-eq p1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 23
    .line 24
    if-eqz p0, :cond_3

    .line 25
    .line 26
    invoke-static {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isMultiModalButton(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    move-object v3, p0

    .line 33
    :cond_1
    return-object v3

    .line 34
    :cond_2
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 39
    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    invoke-static {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isMultiModalButton(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    move-object v3, p0

    .line 49
    :cond_3
    :goto_0
    return-object v3

    .line 50
    :cond_4
    if-eqz p1, :cond_6

    .line 51
    .line 52
    if-eq p1, v2, :cond_5

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_5
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    move-object v3, p0

    .line 60
    check-cast v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_6
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    move-object v3, p0

    .line 68
    check-cast v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 69
    .line 70
    :goto_1
    return-object v3
.end method

.method public final isExist(ILjava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    .line 9
    .line 10
    instance-of p1, p0, Ljava/util/Collection;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p1, p2, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    :goto_0
    move v0, v1

    .line 47
    :goto_1
    return v0

    .line 48
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    .line 49
    .line 50
    instance-of p1, p0, Ljava/util/Collection;

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_7

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {p1, p2, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_7
    :goto_2
    move v0, v1

    .line 87
    :goto_3
    return v0
.end method

.method public final isSetMultimodalButton()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isMultiModalButton(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isMultiModalButton(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move p0, v1

    .line 36
    :goto_1
    if-eqz p0, :cond_3

    .line 37
    .line 38
    :cond_2
    const/4 v1, 0x1

    .line 39
    :cond_3
    return v1
.end method

.method public final removeRemoteView(ILjava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string v2, "honeyboard"

    .line 6
    .line 7
    invoke-static {p2, v2, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ne v2, v0, :cond_0

    .line 12
    .line 13
    move v2, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v1

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v2, :cond_5

    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v2, v0

    .line 38
    check-cast v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object v0, v5

    .line 50
    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move-object v2, v0

    .line 68
    check-cast v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    move-object v5, v0

    .line 79
    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->showInGestureMode:Z

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    if-nez p1, :cond_8

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_7

    .line 96
    .line 97
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v0, p1

    .line 102
    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    move-object v5, p1

    .line 113
    :cond_7
    invoke-virtual {v4, v5}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_8
    if-ne p1, v0, :cond_b

    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_a

    .line 128
    .line 129
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    move-object v0, p1

    .line 134
    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_9

    .line 143
    .line 144
    move-object v5, p1

    .line 145
    :cond_a
    invoke-virtual {v3, v5}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :cond_b
    :goto_2
    return-void
.end method

.method public final setRemoteViewPadding(Landroid/view/View;III)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getNavBarStore()Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 6
    .line 7
    invoke-virtual {p0, p4}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 14
    .line 15
    const/4 p4, 0x0

    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    const/4 p0, 0x2

    .line 21
    if-ne p2, p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    if-eq p2, p0, :cond_1

    .line 26
    .line 27
    const/4 p0, 0x3

    .line 28
    if-ne p2, p0, :cond_3

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p1, p3, p4, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    invoke-virtual {p1, p4, p3, p4, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 35
    .line 36
    .line 37
    :cond_3
    :goto_1
    return-void
.end method

.method public final updateRemoteViewContainer(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getNavBarStore()Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 6
    .line 7
    invoke-virtual {v0, p4}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz p2, :cond_11

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_8

    .line 16
    .line 17
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftContainer:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isSetMultimodalButton()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->showInGestureMode:Z

    .line 26
    .line 27
    iget-object p2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 28
    .line 29
    iget-boolean p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 30
    .line 31
    const/4 p3, 0x1

    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    if-ne p1, p3, :cond_1

    .line 36
    .line 37
    move p2, p3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move p2, v1

    .line 40
    :goto_0
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getRemoteView(II)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p0, v1, p4}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getRemoteView(II)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :goto_1
    if-eqz p2, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, v1, p4}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getRemoteView(II)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getRemoteView(II)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->context:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON_LARGE_COVER:Z

    .line 69
    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    if-ne p4, p3, :cond_4

    .line 73
    .line 74
    const v4, 0x7f070d14

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    const v4, 0x7f070d13

    .line 79
    .line 80
    .line 81
    :goto_3
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const/4 v4, 0x4

    .line 86
    if-eqz v2, :cond_8

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_6

    .line 93
    .line 94
    iget v5, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->adaptivePosition:I

    .line 95
    .line 96
    if-nez v5, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isSetMultimodalButton()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_5

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_5
    move v5, v1

    .line 106
    goto :goto_5

    .line 107
    :cond_6
    :goto_4
    move v5, p3

    .line 108
    :goto_5
    if-eqz v5, :cond_8

    .line 109
    .line 110
    iget-object v2, v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    .line 111
    .line 112
    invoke-virtual {p0, v2, p1, v3, p4}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->setRemoteViewPadding(Landroid/view/View;III)V

    .line 113
    .line 114
    .line 115
    iget-object v5, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftContainer:Landroid/widget/LinearLayout;

    .line 116
    .line 117
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Landroid/view/ViewGroup;

    .line 125
    .line 126
    if-eqz v6, :cond_7

    .line 127
    .line 128
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    :cond_7
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftContainer:Landroid/widget/LinearLayout;

    .line 142
    .line 143
    if-eqz v2, :cond_9

    .line 144
    .line 145
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 146
    .line 147
    .line 148
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftContainer:Landroid/widget/LinearLayout;

    .line 149
    .line 150
    if-nez v2, :cond_a

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_a
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    :goto_6
    if-eqz p2, :cond_e

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_c

    .line 163
    .line 164
    iget v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->adaptivePosition:I

    .line 165
    .line 166
    if-ne v0, p3, :cond_b

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isSetMultimodalButton()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_b

    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_b
    move p3, v1

    .line 176
    :cond_c
    :goto_7
    if-eqz p3, :cond_e

    .line 177
    .line 178
    iget-object p2, p2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    .line 179
    .line 180
    invoke-virtual {p0, p2, p1, v3, p4}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->setRemoteViewPadding(Landroid/view/View;III)V

    .line 181
    .line 182
    .line 183
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    .line 184
    .line 185
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    check-cast p1, Landroid/view/ViewGroup;

    .line 193
    .line 194
    if-eqz p1, :cond_d

    .line 195
    .line 196
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 197
    .line 198
    .line 199
    :cond_d
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    .line 210
    .line 211
    if-eqz p1, :cond_f

    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 214
    .line 215
    .line 216
    :cond_f
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    .line 217
    .line 218
    if-nez p0, :cond_10

    .line 219
    .line 220
    goto :goto_8

    .line 221
    :cond_10
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    .line 223
    .line 224
    :cond_11
    :goto_8
    return-void
.end method
