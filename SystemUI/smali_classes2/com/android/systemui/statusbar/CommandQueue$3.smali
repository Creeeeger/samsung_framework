.class public final Lcom/android/systemui/statusbar/CommandQueue$3;
.super Ljava/lang/Thread;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/CommandQueue;

.field public final synthetic val$args:[Ljava/lang/String;

.field public final synthetic val$fd:Ljava/io/FileDescriptor;

.field public final synthetic val$pfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$fd:Ljava/io/FileDescriptor;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$args:[Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$pfd:Landroid/os/ParcelFileDescriptor;

    .line 8
    .line 9
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$pfd:Landroid/os/ParcelFileDescriptor;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    return-void

    .line 13
    :cond_0
    :try_start_2
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue$3$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue$3$1;-><init>(Lcom/android/systemui/statusbar/CommandQueue$3;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/systemui/statusbar/CommandQueue;->mDumpHandler:Lcom/android/systemui/dump/DumpHandler;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$fd:Ljava/io/FileDescriptor;

    .line 23
    .line 24
    new-instance v3, Ljava/io/PrintWriter;

    .line 25
    .line 26
    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$args:[Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/dump/DumpHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    .line 33
    .line 34
    :goto_0
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$pfd:Landroid/os/ParcelFileDescriptor;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_2

    .line 42
    :catch_1
    :try_start_4
    sget v0, Lcom/android/systemui/statusbar/CommandQueue;->$r8$clinit:I

    .line 43
    .line 44
    const-string v0, "CommandQueue"

    .line 45
    .line 46
    const-string v1, "Process interrupted by Exception"

    .line 47
    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_2
    :goto_1
    return-void

    .line 53
    :goto_2
    :try_start_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue$3;->val$pfd:Landroid/os/ParcelFileDescriptor;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 56
    .line 57
    .line 58
    :catch_3
    throw v0
.end method
