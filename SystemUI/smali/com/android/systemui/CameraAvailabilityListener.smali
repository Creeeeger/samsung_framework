.class public final Lcom/android/systemui/CameraAvailabilityListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Factory:Lcom/android/systemui/CameraAvailabilityListener$Factory;


# instance fields
.field public final cameraDeviceStateCallback:Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;

.field public final cameraDeviceStates:Ljava/util/HashMap;

.field public final cameraManager:Landroid/hardware/camera2/CameraManager;

.field public final cutoutBounds:Landroid/graphics/Rect;

.field public final cutoutProtectionPath:Landroid/graphics/Path;

.field public final excludedPackageIds:Ljava/util/Set;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final handler:Landroid/os/Handler;

.field public final listeners:Ljava/util/List;

.field public final targetCameraId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/CameraAvailabilityListener$Factory;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/CameraAvailabilityListener$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/CameraAvailabilityListener;->Factory:Lcom/android/systemui/CameraAvailabilityListener$Factory;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Landroid/graphics/Path;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/CameraAvailabilityListener;->cutoutProtectionPath:Landroid/graphics/Path;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/CameraAvailabilityListener;->targetCameraId:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/CameraAvailabilityListener;->executor:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/CameraAvailabilityListener;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance p1, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->cutoutBounds:Landroid/graphics/Rect;

    .line 20
    .line 21
    new-instance p3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p3, p0, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    .line 27
    .line 28
    new-instance p3, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;

    .line 29
    .line 30
    invoke-direct {p3, p0}, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;-><init>(Lcom/android/systemui/CameraAvailabilityListener;)V

    .line 31
    .line 32
    .line 33
    new-instance p3, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p3, p0, Lcom/android/systemui/CameraAvailabilityListener;->cameraDeviceStates:Ljava/util/HashMap;

    .line 39
    .line 40
    new-instance p3, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;

    .line 41
    .line 42
    invoke-direct {p3, p0}, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;-><init>(Lcom/android/systemui/CameraAvailabilityListener;)V

    .line 43
    .line 44
    .line 45
    iput-object p3, p0, Lcom/android/systemui/CameraAvailabilityListener;->cameraDeviceStateCallback:Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;

    .line 46
    .line 47
    new-instance p3, Landroid/graphics/RectF;

    .line 48
    .line 49
    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 p5, 0x0

    .line 53
    invoke-virtual {p2, p3, p5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 54
    .line 55
    .line 56
    iget p2, p3, Landroid/graphics/RectF;->left:F

    .line 57
    .line 58
    invoke-static {p2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    iget p6, p3, Landroid/graphics/RectF;->top:F

    .line 63
    .line 64
    invoke-static {p6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 65
    .line 66
    .line 67
    move-result p6

    .line 68
    iget v0, p3, Landroid/graphics/RectF;->right:F

    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 75
    .line 76
    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    invoke-virtual {p1, p2, p6, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 81
    .line 82
    .line 83
    const-string p1, ","

    .line 84
    .line 85
    filled-new-array {p1}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const/4 p2, 0x6

    .line 90
    invoke-static {p4, p1, p5, p2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->excludedPackageIds:Ljava/util/Set;

    .line 99
    .line 100
    return-void
.end method

.method public static final access$notifyCameraActive(Lcom/android/systemui/CameraAvailabilityListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/systemui/CameraAvailabilityListener;->cutoutProtectionPath:Landroid/graphics/Path;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/systemui/CameraAvailabilityListener;->cutoutBounds:Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-interface {v1, v2, v3}, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;->onApplyCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method
