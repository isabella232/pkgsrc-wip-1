$NetBSD$

--- chrome/browser/send_tab_to_self/send_tab_to_self_client_service.cc.orig	2020-07-08 21:40:35.000000000 +0000
+++ chrome/browser/send_tab_to_self/send_tab_to_self_client_service.cc
@@ -40,7 +40,7 @@ void SendTabToSelfClientService::SendTab
 void SendTabToSelfClientService::EntriesAddedRemotely(
     const std::vector<const SendTabToSelfEntry*>& new_entries) {
   for (const std::unique_ptr<ReceivingUiHandler>& handler : GetHandlers()) {
-#if defined(OS_LINUX) || defined(OS_MACOSX) || defined(OS_WIN)
+#if defined(OS_LINUX) || defined(OS_MACOSX) || defined(OS_WIN) || defined(OS_BSD)
     // Only respond to notifications corresponding to this service's profile
     // for these OSes; mobile does not have a Profile.
     // Cast note: on desktop, handlers are guaranteed to be the derived class
