import si from 'systeminformation';

const pros = await si.processes();
const node = pros.list.find(i => i.pid === process.pid);
console.log(node);
