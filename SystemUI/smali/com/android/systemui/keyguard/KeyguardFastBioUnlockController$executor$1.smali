.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/Thread;

    .line 2
    .line 3
    const-string v0, "BioUnlock"

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
