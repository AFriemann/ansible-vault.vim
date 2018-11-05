if exists("g:loaded_ansible_vault") || &cp
  finish
end

let g:loaded_ansible_vault = 1

command! -nargs=0 AnsibleVaultEncryptSelected call ansible_vault#AnsibleVaultEncrypt(ansible_vault#GetVisualSelection())
