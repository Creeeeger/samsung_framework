.class final Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion$isMediaControlActive$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion;->isMediaControlActive(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion$isMediaControlActive$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion$isMediaControlActive$1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion$isMediaControlActive$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion$isMediaControlActive$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion$isMediaControlActive$1;->INSTANCE:Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion$isMediaControlActive$1;

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
.method public final test(Landroid/media/session/MediaController;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->isActive()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Landroid/media/session/MediaController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/mediacontrol/MediaCommandType$Companion$isMediaControlActive$1;->test(Landroid/media/session/MediaController;)Z

    move-result p0

    return p0
.end method
