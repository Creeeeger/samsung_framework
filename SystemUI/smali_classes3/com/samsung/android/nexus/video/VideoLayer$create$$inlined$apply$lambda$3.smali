.class final Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/nexus/video/VideoLayer;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/nexus/video/VideoLayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/video/VideoLayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$3;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(Lcom/samsung/android/media/SemMediaPlayer;II)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/nexus/video/VideoLayer;->access$getTAG$cp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "MediaPlayer error = "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " , "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    if-ne p2, v0, :cond_0

    .line 32
    .line 33
    const/high16 v1, -0x80000000

    .line 34
    .line 35
    if-eq p3, v1, :cond_1

    .line 36
    .line 37
    :cond_0
    const/16 v1, -0x26

    .line 38
    .line 39
    if-ne p2, v1, :cond_3

    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$3;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->access$reset(Lcom/samsung/android/nexus/video/VideoLayer;I)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$3;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getErrorListener()Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;->onError(Lcom/samsung/android/media/SemMediaPlayer;II)Z

    .line 55
    .line 56
    .line 57
    :cond_2
    return v0

    .line 58
    :cond_3
    const/4 p0, 0x0

    .line 59
    return p0
.end method
