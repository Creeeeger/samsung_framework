.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginDisplayLifeCycle;


# instance fields
.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "DisplayLifecycle"

    .line 32
    .line 33
    const-string v1, "getDisplayMetrics(%d) is null, return empty Point"

    .line 34
    .line 35
    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance p0, Landroid/util/DisplayMetrics;

    .line 39
    .line 40
    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object p0
.end method

.method public final getRealSize()Landroid/graphics/Point;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isFolderOpened()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 4
    .line 5
    return p0
.end method
