.class public final Lcom/android/systemui/volume/util/SoundPoolWrapper$initSound$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Landroid/media/SoundPool;

.field public final synthetic $targetStream:I


# direct methods
.method public constructor <init>(Landroid/media/SoundPool;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$initSound$1$1;->$it:Landroid/media/SoundPool;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$initSound$1$1;->$targetStream:I

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
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$initSound$1$1;->$it:Landroid/media/SoundPool;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$initSound$1$1;->$targetStream:I

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->semSetStreamType(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
