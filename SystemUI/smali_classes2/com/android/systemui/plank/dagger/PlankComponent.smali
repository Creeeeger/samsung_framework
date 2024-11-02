.class public final Lcom/android/systemui/plank/dagger/PlankComponent;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final featureEnabled:Z

.field public final lazyProtocolManager:Ldagger/Lazy;


# direct methods
.method public constructor <init>(ZLdagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/plank/dagger/PlankComponent;->featureEnabled:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/plank/dagger/PlankComponent;->lazyProtocolManager:Ldagger/Lazy;

    .line 7
    .line 8
    return-void
.end method
