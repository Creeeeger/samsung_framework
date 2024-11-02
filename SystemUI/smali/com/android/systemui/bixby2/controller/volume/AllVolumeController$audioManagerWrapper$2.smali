.class final Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$audioManagerWrapper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$audioManagerWrapper$2;->$context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$audioManagerWrapper$2;->$context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$audioManagerWrapper$2;->invoke()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object p0

    return-object p0
.end method
