.class Landroid/telephony/TelephonyManager$Listener;
.super Lcom/android/internal/telephony/ITelephonyListener$Stub;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Listener"
.end annotation


# static fields
.field private static final WHAT:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final mListener:Landroid/telephony/CallStateListener;


# direct methods
.method constructor <init>(Landroid/telephony/CallStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyListener$Stub;-><init>()V

    .line 144
    new-instance v0, Landroid/telephony/TelephonyManager$Listener$1;

    invoke-direct {v0, p0}, Landroid/telephony/TelephonyManager$Listener$1;-><init>(Landroid/telephony/TelephonyManager$Listener;)V

    iput-object v0, p0, Landroid/telephony/TelephonyManager$Listener;->mHandler:Landroid/os/Handler;

    .line 152
    iput-object p1, p0, Landroid/telephony/TelephonyManager$Listener;->mListener:Landroid/telephony/CallStateListener;

    .line 153
    return-void
.end method


# virtual methods
.method clearQueue()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Landroid/telephony/TelephonyManager$Listener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManager$Listener;->mHandler:Landroid/os/Handler;

    .line 167
    return-void
.end method

.method public onUpdate(IILjava/lang/String;)V
    .locals 3
    .parameter "callId"
    .parameter "state"
    .parameter "number"

    .prologue
    .line 157
    iget-object v0, p0, Landroid/telephony/TelephonyManager$Listener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Landroid/telephony/TelephonyManager$Listener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$Listener;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    :cond_0
    return-void
.end method
