.class public final Lcom/android/systemui/shared/launcher/WindowManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sInstance:Lcom/android/systemui/shared/launcher/WindowManagerWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/view/InsetsController;->RESIZE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    new-instance v0, Lcom/android/systemui/shared/launcher/WindowManagerWrapper;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/android/systemui/shared/launcher/WindowManagerWrapper;-><init>()V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/systemui/shared/launcher/WindowManagerWrapper;->sInstance:Lcom/android/systemui/shared/launcher/WindowManagerWrapper;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
