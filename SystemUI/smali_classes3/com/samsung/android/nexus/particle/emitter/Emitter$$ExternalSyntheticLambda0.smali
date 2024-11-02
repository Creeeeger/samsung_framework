.class public final synthetic Lcom/samsung/android/nexus/particle/emitter/Emitter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/nexus/particle/emitter/World;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/nexus/particle/emitter/World;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/nexus/particle/emitter/World;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/Emitter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/nexus/particle/emitter/World;

    .line 2
    .line 3
    check-cast p1, Lcom/samsung/android/nexus/particle/emitter/Emitter;

    .line 4
    .line 5
    iput-object p0, p1, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    .line 8
    .line 9
    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/Emitter$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/particle/emitter/Emitter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/nexus/particle/emitter/World;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
