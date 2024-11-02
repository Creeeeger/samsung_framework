.class public final Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $direction:I

.field public final synthetic this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;->$direction:I

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
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundIDs:[I

    .line 8
    .line 9
    iget v2, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;->$direction:I

    .line 10
    .line 11
    aget v2, v0, v2

    .line 12
    .line 13
    const/high16 v3, 0x3f800000    # 1.0f

    .line 14
    .line 15
    const/high16 v4, 0x3f800000    # 1.0f

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/high16 v7, 0x3f800000    # 1.0f

    .line 20
    .line 21
    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$2;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    .line 43
    .line 44
    :cond_2
    return-void
.end method
