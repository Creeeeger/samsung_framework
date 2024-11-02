.class public final Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/utils/TalkBackUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;->this$0:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDone(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "TTS_END"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "TTS speaking is done!!!"

    .line 10
    .line 11
    const-string v0, "TalkBackUtils"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;->this$0:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string p0, "TTS stop!!!"

    .line 22
    .line 23
    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "TTS_END"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "Error occured during TTS speaks!!!"

    .line 10
    .line 11
    const-string v0, "TalkBackUtils"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;->this$0:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string p0, "TTS stop!!!"

    .line 22
    .line 23
    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p0, "TalkBackUtils"

    .line 2
    .line 3
    const-string p1, "TTS speaks now!!!"

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method
