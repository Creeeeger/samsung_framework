.class public final Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$onFoldStateChanged$2$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $isOpened:Z

.field public final synthetic $it:Lcom/android/systemui/keyguard/RankedStateListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/RankedStateListener;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$onFoldStateChanged$2$1;->$it:Lcom/android/systemui/keyguard/RankedStateListener;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$onFoldStateChanged$2$1;->$isOpened:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$onFoldStateChanged$2$1;->$it:Lcom/android/systemui/keyguard/RankedStateListener;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/keyguard/RankedStateListener;->stateListener:Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$onFoldStateChanged$2$1;->$isOpened:Z

    .line 6
    .line 7
    invoke-interface {v0, p0}, Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;->onFoldStateChanged(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
