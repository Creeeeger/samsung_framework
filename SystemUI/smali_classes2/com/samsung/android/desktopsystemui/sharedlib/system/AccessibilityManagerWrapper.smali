.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper$AccessibilityCallbacks;
    }
.end annotation


# static fields
.field private static final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;


# instance fields
.field private final mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper$AccessibilityCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;

    .line 7
    .line 8
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "accessibility"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 19
    .line 20
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 17
    .line 18
    return-void
.end method

.method private addAccessibilityServicesStateChangeListener()V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method private removeAccessibilityServicesStateChangeListener()V
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper$AccessibilityCallbacks;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->addAccessibilityServicesStateChangeListener()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public clearCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->removeAccessibilityServicesStateChangeListener()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getA11yButtonState([Z)I
    .locals 7

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    sub-int/2addr v2, v3

    .line 23
    move v4, v1

    .line 24
    :goto_0
    if-ltz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 31
    .line 32
    iget v5, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 33
    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    const/16 v6, 0x10

    .line 37
    .line 38
    if-eq v5, v6, :cond_0

    .line 39
    .line 40
    move v4, v3

    .line 41
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-eqz p1, :cond_2

    .line 45
    .line 46
    aput-boolean v4, p1, v1

    .line 47
    .line 48
    :cond_2
    return p0
.end method

.method public isAccessibilityVolumeStreamActive()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public onAccessibilityClick(Landroid/view/Display;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public removeCallback(Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper$AccessibilityCallbacks;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array p1, p1, [Z

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->getA11yButtonState([Z)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper$AccessibilityCallbacks;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/AccessibilityManagerWrapper$AccessibilityCallbacks;->updateAccessibility(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
